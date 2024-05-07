-- Ejercicio en clase
CREATE OR REPLACE FUNCTION trigger_factura_stock() 
RETURNS trigger as $$
BEGIN
if (SELECT stock from productos Where id_producto = NEW.producto limit 1) > 0 THEN
    UPDATE productos set stock = stock - 1 WHERE id_producto = NEW.producto;
    return NEW;
END IF;
    RAISE EXCEPTION 'No hay stock';
    return NEW;

END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE TRIGGER trigger_facturas_check_Stock
BEFORE INSERT
ON facturas
FOR EACH ROW
EXECUTE FUNCTION trigger_factura_stock();


insert into facturas (cuil, total, producto) 
values 
( 243334449, 1890.54,8);

SELECT stock , nombre from productos where id_producto = 8 ;




-- Implementar mediante un trigger, una función que se encargue de validar si el id_producto del producto que se quiere vender (en la tabla facturas) es válido.
-- Para ello, hay que verificar que ese id_producto exista dentro de la tabla productos.
-- En caso de que el id_producto sea inválido, lanzar una excepción con el texto "EL PRODUCTO NO EXISTE".

CREATE OR REPLACE FUNCTION trigger_factura_venta_validacion() 
RETURNS trigger as $$
BEGIN
if (SELECT id_producto from productos Where id_producto = NEW.producto limit 1) IS NOT NULL THEN
    return NEW;
END IF;
    RAISE EXCEPTION 'EL PRODUCTO NO EXISTE';
    return NEW;

END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE TRIGGER trigger_factura_venta
BEFORE INSERT
ON facturas
FOR EACH ROW
EXECUTE FUNCTION trigger_factura_venta_validacion();


insert into facturas (cuil, total, producto) 
values 
( 243567877, 1890.54,14);