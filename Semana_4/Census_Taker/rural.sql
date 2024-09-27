-- En rural.sql, escribe una declaración SQL para crear una vista llamada rural. 
-- Esta vista debe contener todos los registros censales relacionados con un municipio rural 
-- (identificado por incluir "rural" en su nombre). 
-- Asegúrate de que la vista contenga todas las columnas de la tabla census.


CREATE VIEW "rural" AS
SELECT * FROM "census"
WHERE "locality" LIKE '%rural%';
