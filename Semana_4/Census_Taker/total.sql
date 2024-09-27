-- En total.sql, escribe una declaración SQL para crear una vista llamada total. 
-- Esta vista debe contener las sumas de cada columna numérica en census, 
-- a través de todos los distritos y localidades. 
-- Asegúrate de que la vista contenga cada una de las siguientes columnas:

-- families, que es la suma de familias de cada localidad en Nepal.
-- households, que es la suma de hogares de cada localidad en Nepal.
-- population, que es la suma de la población de cada localidad en Nepal.
-- male, que es la suma de personas que se identifican como hombres de cada localidad en Nepal.
-- female, que es la suma de personas que se identifican como mujeres de cada localidad en Nepal.


CREATE VIEW "total" AS
SELECT SUM("families") AS "families"
,SUM("households") AS "households"
,SUM("population") AS "population"
,SUM("male") AS "male" ,SUM("female") AS "female"
FROM "census";

