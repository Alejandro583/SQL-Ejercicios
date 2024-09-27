--## 10.sql
--El gerente general te ha pedido un informe que detalla el nombre de cada jugador,
--su salario para cada año que ha jugado y su cantidad de home runs en cada año 
--que ha jugado. Para ser preciso, la tabla debe incluir:
-- Todos los primeros nombres de los jugadores
-- Todos los apellidos de los jugadores
-- Todos los salarios de los jugadores
-- Todos los home runs de los jugadores
-- El año en que el jugador recibió ese salario y conectó esos home runs
--En `10.sql`, escribe una consulta para devolver dicha tabla.
-- Tu consulta debe devolver una tabla con cinco columnas, según lo anterior.
-- Ordena los resultados, primero y ante todo, por ID de jugador (de menor a mayor).
-- Ordena las filas del mismo jugador por año, en orden descendente.
-- Considera un caso especial: si un jugador tiene varios salarios o actuaciones para un año determinado, ordénalos primero por el número de home runs, en orden descendente, seguido del salario, en orden descendente.
-- Asegúrate de que, en una sola fila, el año del salario y el año de la actuación coincidan.


SELECT
    "players"."first_name",
    "players"."last_name",
    "salaries"."salary",
    "performances"."year",
    "performances"."HR"
FROM "players"
JOIN "salaries"
ON "players"."id" = "salaries"."player_id"
JOIN "performances"
ON "players"."id" = "performances"."player_id"
AND "salaries"."year" = "performances"."year"
ORDER BY
"players"."id" ASC,
"performances"."year" DESC,
"performances"."HR" DESC,
"salaries"."salary" DESC;

