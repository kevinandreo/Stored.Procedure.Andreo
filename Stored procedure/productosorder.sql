DELIMITER $$
CREATE PROCEDURE `sp_get_productos_order` (IN field CHAR(20))
BEGIN
	IF field <> '' THEN	
		SET @productos_order = CONCAT('ORDER BY', field);
	ELSE
		SET @productos_order = '';
	END IF;	
    SET @clausula = CONCAT('SELECT * FROM productos', @productos_order);
    PREPARE querySQL FROM @clausula;
    EXECUTE querySQL;
    DEALLOCATE PREPARE querySQL;
END$$

DELIMITER ;
-- Me sale un ErrorCode 1146
CALL sp_get_productos_order('precio_producto');