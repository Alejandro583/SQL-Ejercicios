--## 3.sql
--Tu equipo va a necesitar un gran bateador de home runs. Ken Griffey Jr., 
--un galardonado Silver Slugger y Gold Glove de mucho tiempo,
--podría ser un buen prospecto. En `3.sql`, escribe una consulta SQL 
--para encontrar el historial de home runs de Ken Griffey Jr.
-- Ordena por año en orden descendente.
--Nota que puede haber dos jugadores con el nombre "Ken Griffey". Este Ken Griffey nació en 1969.
-- Tu consulta debe devolver una tabla con dos columnas: una para el año y otra para los home runs.

SELECT "performances"."year","performances"."HR"
FROM "performances" JOIN "players"
ON "players"."id" = "performances"."player_id"
WHERE "players"."first_name" = 'Ken'
AND "players"."birth_year" = 1969
GROUP BY "performances"."year"
ORDER BY "performances"."year" DESC;
