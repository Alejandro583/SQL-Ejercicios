--## 11.sql
--Necesitas un jugador que pueda hacer hits. ¿Quién podría ser el más subestimado? En `11.sql`,
--escribe una consulta SQL para encontrar a los 10 jugadores menos costosos por hit en 2001.

-- Tu consulta debe devolver una tabla con tres columnas: una para el primer nombre del jugador, una para su apellido y otra llamada “dollars per hit”.
-- Puedes calcular la columna “dollars per hit” dividiendo el salario de un jugador en 2001 por la cantidad de hits que hizo en 2001. Recuerda que puedes usar `AS` para renombrar una columna.
-- Dividir un salario por 0 hits dará como resultado un valor NULL. Evita el problema filtrando a los jugadores con 0 hits.
--Ordena la tabla por la columna “dollars per hit”, de menos a más costoso. Si dos jugadores tienen el mismo “dollars per hit”, ordénalos por nombre, seguido por apellido, en orden alfabético.
-- Al igual que en `10.sql`, asegúrate de que el año del salario y el año de la actuación coincidan.
-- Puedes suponer, para simplificar, que un jugador solo tendrá un salario y una actuación en 2001.


SELECT
"players"."first_name",
"players"."last_name",
"salaries"."salary" / "performances"."H" AS "Dollars per hit"
FROM "players" JOIN "salaries"
ON "players"."id" = "salaries"."player_id"
JOIN "performances"
ON "players"."id" = "performances"."player_id"
AND "performances"."year" = "salaries"."year"
WHERE "performances"."H" != 0 AND "performances"."year" = 2001
ORDER BY "Dollars per hit" ASC,
"players"."first_name" ASC,
"players"."last_name" ASC
LIMIT 10;
