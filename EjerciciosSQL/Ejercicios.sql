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

