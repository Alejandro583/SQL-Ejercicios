--## 6.sql
--¿Qué equipos podrían ser la mayor competencia para los A’s este año? En `6.sql`, 
--escribe una consulta SQL para devolver los 5 equipos principales,
--ordenados por el número total de hits de los jugadores en 2001.
-- Llama a la columna que representa los hits totales en 2001 “total hits”.
-- Ordena por hits totales, de mayor a menor.
-- Tu consulta debe devolver dos columnas: una para el nombre de los equipos y otra para los hits totales en 2001.


SELECT "teams"."name", SUM("performances"."H") AS 'total hits'
FROM "teams"
JOIN "performances"
ON "teams"."id" = "performances"."team_id"
WHERE "performances"."year" = 2001
GROUP BY "teams"."name"
ORDER BY "total hits" DESC
LIMIT 5;


