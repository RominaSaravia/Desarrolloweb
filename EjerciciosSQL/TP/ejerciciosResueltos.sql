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


