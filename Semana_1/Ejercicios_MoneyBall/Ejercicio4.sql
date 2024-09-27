--## 4.sql
--Necesitas hacer una recomendación sobre qué jugadores el equipo debería considerar contratar.
--Con el presupuesto del equipo disminuyendo, el gerente general quiere saber qué jugadores 
--recibieron los salarios más bajos en 2001. En `4.sql`, escribe una consulta SQL para encontrar
--a los 50 jugadores que recibieron los salarios más bajos en 2001.
--Ordena a los jugadores por salario, de menor a mayor.
-- Si dos jugadores tienen el mismo salario, ordénalos alfabéticamente por nombre y luego por apellido.
-- Si dos jugadores tienen el mismo nombre y apellido, ordénalos por ID de jugador.
-- Tu consulta debe devolver tres columnas: una para el nombre del jugador, una para su apellido y otra para sus salarios.

SELECT "players"."first_name","players"."last_name"
, "salaries"."salary"
FROM "salaries" JOIN "players"
ON "players"."id" = "salaries"."player_id"
WHERE "salaries"."year" = 2001
ORDER BY "salaries"."salary" ASC
, "players"."first_name","players"."last_name"
, "players"."id" LIMIT 50;
