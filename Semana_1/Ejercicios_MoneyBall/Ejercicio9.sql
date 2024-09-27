--## 9.sql
--¿Qué salarios están pagando otros equipos? En `9.sql`, escribe una consulta SQL
--para encontrar a los 5 equipos que pagan menos (por salario promedio) en 2001.

-- Redondea la columna de salario promedio a dos decimales y llámala “average salary”.
-- Ordena a los equipos por salario promedio, de menor a mayor.
-- Tu consulta debe devolver una tabla con dos columnas: una para el nombre de los equipos y otra para su salario promedio.


SELECT "teams"."name", ROUND(AVG("salaries"."salary"),2)
AS "AVG SALARY"
FROM "teams" JOIN "salaries"
ON "teams"."id" = "salaries"."team_id"
WHERE "salaries"."year" = 2001
GROUP BY "teams"."name"
ORDER BY "AVG SALARY"
LIMIT 5;
