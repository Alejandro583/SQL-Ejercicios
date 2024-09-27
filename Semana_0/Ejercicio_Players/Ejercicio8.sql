-- 8.sql: Encuentra la altura y peso promedio (redondeados a dos decimales) de los jugadores 
-- que debutaron a partir del 1 de enero de 2000. Devuelve columnas con los nombres “Average Height” y “Average Weight”.

SELECT ROUND(AVG("height"),2) AS 'Average Height',ROUND(AVG("weight"),2) AS 'Average Weight'
FROM "players"
WHERE "debut" >= '2000-01-01';
