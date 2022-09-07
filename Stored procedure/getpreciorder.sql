USE deposito_queso
DELIMITER $$
-- Procedimiento que recibe el precio del producto ordenado por id_producto ASC
CREATE PROCEDURE sp_get_precio_order (IN precio VARCHAR(50))
BEGIN
	SELECT *
    FROM productos
    WHERE precio_producto = precio
    ORDER BY id_producto ASC;
END$$

DELIMITER ;
-- Los precios son 565, 650, 829, 955, 979, 995, 1020, 1059
CALL sp_get_precio_order ('1059');

