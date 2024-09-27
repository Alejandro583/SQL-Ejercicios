--## 12.sql
--Los hits son geniales, ¡pero también lo son los RBIs! En `12.sql`, escribe una consulta 
--SQL para encontrar a los jugadores entre los 10 menos costosos por hit y entre los 10 menos costosos por RBI en 2001.

-- Tu consulta debe devolver una tabla con dos columnas: una para el primer nombre del jugador y otra para su apellido.
-- Puedes calcular el salario por RBI de un jugador dividiendo su salario de 2001 por su número de RBIs en 2001.
-- Puedes suponer, para simplificar, que un jugador solo tendrá un salario y una actuación en 2001.
-- Ordena tus resultados por el ID del jugador, de menor a mayor (o alfabéticamente por apellido, ya que ambos son iguales en este caso).
-- ¡Ten en cuenta las lecciones que aprendiste en `10.sql` y `11.sql`!

SELECT
    "players"."first_name",
    "players"."last_name"
FROM
    "players"
JOIN
    "salaries" ON "players"."id" = "salaries"."player_id"
JOIN
    "performances" ON "players"."id" = "performances"."player_id"
        AND "performances"."year" = "salaries"."year"
WHERE
    "performances"."H" != 0
    AND "performances"."year" = 2001
    AND "performances"."RBI" != 0
ORDER BY
    ("salaries"."salary" / "performances"."H") ,
    ("salaries"."salary" / "performances"."RBI");

