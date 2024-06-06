## Generales
## 1 ---
SELECT nombre,especie,raza,genero,edad from animales ORDER BY  edad DESC;


## 2 ----
SELECT animal,animales.nombre, visitas.fecha, historial_medico 
from fichas_medicas
LEFT JOIN animales ON fichas_medicas.animal = animales.id_animal
RIGHT JOIN visitas ON fichas_medicas.id_ficha_medica = visitas.ficha_medica
ORDER BY visitas.fecha DESC
;

##3) Obtener el peso mínimo, promedio y máximo agrupado por especie, 
##raza y género. Ordenar por especie, raza y género (asc o desc).
SELECT especie,raza,MIN(peso),AVG(peso),MAX(peso) as PESO_MAXIMO,genero 
from animales
LEFT JOIN especies ON animales.especie = especies.id_especie
GROUP BY especie,raza,genero
ORDER BY especie,raza,genero ASC
;


#4) Obtener el historial de visitas de una mascota determinada 
#(hardcodear id en la query), ordenadas
#por fecha descendentemente (la más reciente primero).
##Mostrar:
   #Nombre del animal
   #Nombre del cuidador
   #Fecha de visita
   #Motivo de consulta
   #Costo de la visita
SELECT animales.nombre,cuidadores.nombre,fecha,consulta,costo_visita from visitas
LEFT JOIN fichas_medicas ON visitas.ficha_medica = fichas_medicas.id_ficha_medica
RIGHT JOIN animales ON fichas_medicas.animal = animales.id_animal
RIGHT JOIN cuidadores ON animales.cuidador = cuidadores.id_cuidador
WHERE animales.id_animal = 2
ORDER BY fecha DESC
;

--5 Obtener ficha de vacunación completa (vacunas aplicadas) de cada animal, 
--ordenada descendentemente 
-- por fecha de última aplicación. Nota: No se deben mostrar las vacunas vencidas.
--    Mostrar los siguientes datos:
--    - ID de la ficha médica
--    - ID del animal
--    - Nombre de la vacuna
--    - Fecha de aplicación
--    - Fecha de la próxima aplicación (solo si corresponde)

SELECT ficha_medica,fichas_medicas.animal,vacunas.nombre,fecha_aplicacion ,
CASE 
    WHEN duracion_meses <> 0  THEN to_char(fecha_aplicacion + duracion_meses * INTERVAL '1 MONTH','YYYY-MM-DD')
    ELSE ' - '
END as proxima_aplicacion
from fichas_vacunas
LEFT JOIN fichas_medicas ON fichas_vacunas.ficha_medica = fichas_medicas.id_ficha_medica
LEFT JOIN vacunas ON fichas_vacunas.vacuna = vacunas.id_vacuna
WHERE (fecha_aplicacion + duracion_meses * INTERVAL '1 MONTH' > current_timestamp AND duracion_meses <> 0) OR duracion_meses = 0
ORDER BY animal DESC
;


--6) Obtener el total de facturación por cada especie de animal incluyendo las vacunaciones,
-- ordenado de mayor a menor.
###
SELECT vacunas.especie,SUM(costo_visita) from visitas
LEFT JOIN fichas_medicas ON visitas.ficha_medica = fichas_medicas.id_ficha_medica
LEFT JOIN fichas_vacunas ON visitas.ficha_medica = fichas_vacunas.ficha_medica
LEFT JOIN vacunas ON fichas_vacunas.vacuna = vacunas.id_vacuna
GROUP BY vacunas.especie,costo_visita


-- 7) 
-- Obtener el total de ventas en vacunas por cada especie y raza de animal. 
-- Ordenar de mayor a menor.

SELECT SUM(vacunas.coste) as "Total Venta",vacunas.especie, animales.raza  FROM fichas_vacunas
LEFT JOIN fichas_medicas ON fichas_vacunas.ficha_medica = fichas_medicas.id_ficha_medica
LEFT JOIN animales ON fichas_medicas.animal = animales.id_animal
LEFT JOIN vacunas ON fichas_vacunas.vacuna = vacunas.id_vacuna
GROUP BY vacunas.especie,animales.raza
ORDER BY vacunas.especie, "Total Venta" DESC
;  
-- En otra query obtener el total de ventas de cada vacuna. Ordenar de mayor a menor.
SELECT SUM(vacunas.coste) as "Total Venta",vacunas.nombre  FROM fichas_vacunas
LEFT JOIN vacunas ON fichas_vacunas.vacuna = vacunas.id_vacuna
GROUP BY vacunas.nombre
ORDER BY "Total Venta" DESC
;


-- 8) 
-- Obtener tasa de vacunación por especie y edad. 
-- La tasa de vacunación es el porcentaje de cada grupo que tiene
-- todas las vacunas al día.
--    Mostrar:
--    - Especie
--    - Edad
--    - "Tasa de vacunación"
--    Este último valor debe figurar como un valor entre 0 y 100 con el símbolo "%" al final.
SELECT animales.especie,animales.edad,(
COUNT(CASE  
    WHEN vacunas.duracion_meses <> 0 AND fichas_vacunas.fecha_aplicacion + vacunas.duracion_meses * INTERVAL '1 MONTH' > current_timestamp THEN 1
    WHEN vacunas.duracion_meses = 0 THEN 1 
    ELSE null 
end  )  * 100 ) / COUNT(fichas_medicas.id_ficha_medica) || '%' as "Tasa de vacunación"
FROM fichas_vacunas
LEFT JOIN fichas_medicas ON fichas_vacunas.ficha_medica = fichas_medicas.id_ficha_medica
LEFT JOIN animales ON fichas_medicas.animal = animales.id_animal
LEFT JOIN vacunas ON fichas_vacunas.vacuna = vacunas.id_vacuna
GROUP BY animales.especie, animales.edad
ORDER BY animales.especie DESC
;


