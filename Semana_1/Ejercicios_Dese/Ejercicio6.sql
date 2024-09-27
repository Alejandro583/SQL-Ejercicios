--## 6.sql
--DESE quiere evaluar qué escuelas lograron una tasa de graduación del 100%. En `6.sql`,
--escribe una consulta SQL para encontrar los nombres de las escuelas (¡públicas o charter!) 
--que informaron una tasa de graduación del 100%.

SELECT "schools"."name" FROM "schools"
JOIN "graduation_rates"
ON "schools".id = "graduation_rates"."school_id"
WHERE "graduation_rates"."graduated" = 100;




