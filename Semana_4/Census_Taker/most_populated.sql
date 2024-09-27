-- En most_populated.sql, escribe una declaración SQL para crear una vista llamada most_populated. 
-- Esta vista debe contener, en orden de mayor a menor, los distritos más poblados de Nepal. 
-- Asegúrate de que la vista contenga cada una de las siguientes columnas:

-- district, que es el nombre del distrito.
-- families, que es el total de familias en el distrito.
-- households, que es el total de hogares en el distrito.
-- population, que es la población total del distrito.
-- male, que es el total de personas que se identifican como hombres en el distrito.
-- female, que es el total de personas que se identifican como mujeres en el distrito.


CREATE VIEW "most_populated" AS
SELECT "district",SUM("families") AS "families"
,SUM("households") AS "households"
,SUM("population") AS "population"
,SUM("male") AS "male" ,SUM("female") AS "female"
FROM "census"
GROUP BY "district"
ORDER BY  SUM("households") DESC;
