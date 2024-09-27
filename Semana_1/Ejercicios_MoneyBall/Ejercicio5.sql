--## 5.sql
--Es un día algo lento en la oficina. Aunque Satchel ya no juega, en `5.sql`, 
--escribe una consulta SQL para encontrar todos los equipos en los que Satchel Paige jugó.
--Tu consulta debe devolver una tabla con una única columna, con el nombre de los equipos.

SELECT "teams"."name" FROM "teams"
JOIN "performances"
ON "teams"."id" = "performances"."team_id"
JOIN "players"
ON "players"."id" = "performances"."player_id"
WHERE "players"."first_name" = 'Satchel'
AND "players"."last_name" = 'Paige';
