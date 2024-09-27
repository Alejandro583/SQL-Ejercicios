SELECT "salaries"."year", "salaries"."salary"
FROM "salaries" JOIN "players"
ON "players"."id" = "salaries"."player_id"
WHERE "players"."first_name" ='Cal'
AND "players"."last_name" = 'Ripken'
GROUP BY "salaries"."year"
ORDER BY "salaries"."year" DESC;
