SELECT "teams"."name", ROUND(AVG("salaries"."salary"),2)
AS "AVG SALARY"
FROM "teams" JOIN "salaries"
ON "teams"."id" = "salaries"."team_id"
WHERE "salaries"."year" = 2001
GROUP BY "teams"."name"
ORDER BY "AVG SALARY"
LIMIT 5;
