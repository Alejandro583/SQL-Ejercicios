--## 8.sql
--¿Cuánto necesitarían pagar los A's para obtener al mejor bateador de home runs 
--de la temporada pasada? En `8.sql`, escribe una consulta SQL para encontrar 
--el salario de 2001 del jugador que conectó la mayor cantidad de home runs en 2001.
-- Tu consulta debe devolver una tabla con una columna, el salario del jugador.

SELECT "salaries"."salary"
FROM "salaries"
JOIN "performances"
ON "salaries"."player_id" = "performances"."player_id"
WHERE "performances"."HR" = (
    SELECT MAX("HR") 
    FROM "performances"
    WHERE "year" = 2001
) AND "performances"."year" = 2001
ORDER BY "salaries"."salary" DESC
LIMIT 1;
