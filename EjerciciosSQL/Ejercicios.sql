--Ejercicio1
SELECT cod_vuelo, id_destino, to_char(partida, 'hh24:mi:ss'), llegada
from vuelos 
Where partida > current_timestamp AND partida < current_timestamp + INTERVAL '12 hour'
ORDER BY partida;
--Ejercicio2
SELECT concat(pasajeros.apellido,', ',pasajeros.nombre ) as Pasajero ,email,pasajero,paises.nombre  from tickets
INNER JOIN pasajeros ON tickets.pasajero = pasajeros.documento
RIGHT JOIN paises ON pasajeros.pais = paises.id_pais; 

--Ejercicio3
UPDATE tickets
SET checked_in = true
WHERE pasajero = 433239313;

SELECT pasajero , checked_in from tickets
where pasajero = 433239313;
--END Ejericicio3

-- ejercicio 4 
-- Obtener todos los aviones disponibles, ordenados por consumo,
-- apareciendo el que menos consume primero y el que más consume, al final.
SELECT patente, modelo, consumo from aviones ORDER BY consumo

--Ejercicio 5
-- Mostrar la cantidad de pasajeros de cada nacionalidad que hay cargados en el sistema.
-- Ordenar de mayor cantidad a menor cantidad.
SELECT  paises.nombre, COUNT(pais) as n_pasajeros  from pasajeros 
LEFT JOIN paises ON pasajeros.pais = paises.id_pais
GROUP BY paises.nombre 
ORDER BY  n_pasajeros DESC;

--Ejercicio 6
-- Mostrar cuántos vuelos realiza cada avión,
-- ordenados de mayor cantidad a menor cantidad. 
-- Mostrar patente, modelo y cantidad de vuelos.
SELECT patente, modelo, COUNT(id_avion) as n_vuelos from vuelos
LEFT JOIN aviones ON vuelos.id_avion = aviones.patente
GROUP BY aviones.modelo, aviones.patente
ORDER BY n_vuelos DESC;


-- Ejercicio 7
-- Mostrar los vuelos ordenados por consumo de combustible.
-- Mostrar código de vuelo, y qué consumo de combustible tiene en función del avión asignado.
SELECT cod_vuelo, aviones.consumo from vuelos
LEFT JOIN aviones ON vuelos.id_avion = aviones.patente
ORDER BY consumo;

-- Ejercicio 8
-- Ordenar los vuelos por duración (en tiempo), ordenados de mayor a menor.
-- DURACION: Formato INTERVAL --
SELECT cod_vuelo,partida, llegada,  (llegada - partida) as duracion
from vuelos
ORDER BY duracion  DESC ;

-- DURACION: En Horas --
SELECT cod_vuelo,partida, llegada,extract('epoch' from (llegada - partida)::INTERVAL)/3600 as duracion_hs
from vuelos
ORDER BY duracion_hs DESC ;

-- DURACION: Con formato dias HH:MM:SS --
SELECT cod_vuelo,partida, llegada,
extract(DAY from (llegada - partida)) || ' dias ' ||
extract(HOUR from (llegada - partida))  || ':' ||
extract(MINUTE from (llegada - partida)) || ':' ||
extract(MINUTE from (llegada - partida)) || ' hs'  as duracion 
from vuelos
ORDER BY (llegada - partida) DESC ;


-- Ejercicio 9
-- A partir de la duración de cada vuelo, 
-- obtener cuántos litros de combustible se utiliza para cada uno.
-- Mostrar código de vuelo, ciudad de origen, ciudad de destino y litros de combustible totales.
-- Esta última columna debe aparecer con el nombre "litros_consumidos"
--(Litros consumos por hora)
SELECT cod_vuelo,orig.nombre as origen,dest.nombre as destino,
round(extract('epoch' from (llegada - partida)::INTERVAL)/3600 * aviones.consumo,2) as litros_consumidos
from vuelos
LEFT JOIN aviones ON vuelos.id_avion = aviones.patente
LEFT JOIN paises as orig ON vuelos.id_origen = orig.id_pais 
LEFT JOIN paises as dest ON vuelos.id_destino = dest.id_pais 
ORDER BY litros_consumidos DESC ;


-- Ejercicio 10
-- Crear función que permita hacer el check-in (ver punto 3).
-- La misma debe poder invocarse y sin devolver nada como resultado, ésta debe actualizar el campo checked_in del ticket correspondiente.
-- Debe tomar el dni y el cod_vuelo como parámetros de entrada.
-- Luego, hacer validación para que, si el pasajero de ese vuelo ya tiene realizado el check-in,
-- no vuelva a sobrescribir el campo, sino que levante una excepción (raise exception).

CREATE OR REPLACE FUNCTION public.check_in2(dni_pasajero integer, vuelo_ps character varying)
 RETURNS integer
 LANGUAGE plpgsql
AS $function$
DECLARE state boolean;
BEGIN
state := (SELECT checked_in FROM tickets  where dni_pasajero = pasajero AND vuelo_ps = vuelo limit 1);
if state = false THEN
    UPDATE tickets set checked_in = true 
    where dni_pasajero = pasajero AND vuelo_ps = vuelo AND checked_in <> true;
    return 0;
    ELSE
    RAISE EXCEPTION 'Ya esta hecho el check in';
    END if;
END;
$function$


SELECT check_in2(344696634,'CBG555');
select pasajero,vuelo, checked_in from tickets WHERE pasajero = 344696634;


-- Ejercicio 11
-- Crear una función "setAsiento" que asigne el asiento al pasajero. 
-- Debe recibir el código de vuelo, el DNI y el numero de asiento a asignar. 
-- A su vez, la función debe validar que en ese vuelo no esté ocupado el asiento que se desea asignar. 
-- En caso de que se elija un asiento ocupado, levantar una excepción. 
-- En caso de que el asiento esté disponible, actualizar el campo asiento.

CREATE FUNCTION setAsiento(dni_pasajero INTEGER, cod_vuelo varchar(10), n_asiento integer) 
RETURNS int AS $$
DECLARE _asiento integer;
BEGIN
_asiento := (SELECT asiento FROM tickets  where cod_vuelo = vuelo AND asiento = n_asiento limit 1);
if _asiento  IS NULL THEN
    update tickets set asiento = n_asiento where dni_pasajero = pasajero AND cod_vuelo = vuelo;
    return 0;
ELSE 
    RAISE EXCEPTION 'Asiento tomado';
    return 1;
END if;
    
END;
$$ LANGUAGE plpgsql;


SELECT setasiento(344696634,'CBG555',23);
select pasajero,vuelo, checked_in,asiento from tickets WHERE pasajero = 344696634;

select pasajero,vuelo, checked_in,asiento from tickets WHERE asiento = 23;