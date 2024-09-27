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
    ("salaries"."salary" / "performances"."H") , -- Ordenar por salario por golpe
    ("salaries"."salary" / "performances"."RBI") -- Luego ordenar por salario por RBI

