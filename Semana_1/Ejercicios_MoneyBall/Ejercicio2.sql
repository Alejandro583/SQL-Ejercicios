--## 2.sql
--Tu gerente general (es decir, la persona que toma decisiones sobre los contratos de los jugadores)
--te pregunta si el equipo debería cambiar a un jugador actual por Cal Ripken Jr., 
--una estrella que probablemente esté cerca de su retiro. En `2.sql`, 
--escribe una consulta SQL para encontrar el historial salarial de Cal Ripken Jr.
-- Ordena por año en orden descendente.
-- Tu consulta debe devolver una tabla con dos columnas: una para el año y otra para el salario.


SELECT "salaries"."year", "salaries"."salary"
FROM "salaries" JOIN "players"
ON "players"."id" = "salaries"."player_id"
WHERE "players"."first_name" ='Cal'
AND "players"."last_name" = 'Ripken'
GROUP BY "salaries"."year"
ORDER BY "salaries"."year" DESC;
