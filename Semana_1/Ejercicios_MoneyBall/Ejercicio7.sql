--## 7.sql
--Necesitas hacer una recomendación sobre qué jugador (o jugadores) evitar reclutar. 
--En `7.sql`, escribe una consulta SQL para encontrar el nombre del jugador
--que ha recibido el salario más alto de todos los tiempos en la Major League Baseball.
--Tu consulta debe devolver una tabla con dos columnas: una para el primer nombre del jugador y otra para su apellido.

SELECT "players"."first_name", "players"."last_name"
FROM "players" JOIN "salaries"
ON "players"."id" = "salaries"."player_id"
ORDER BY "salaries"."salary" DESC
LIMIT 1;
