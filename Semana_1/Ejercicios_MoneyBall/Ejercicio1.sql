SELECT "year" ,ROUND(AVG("salary"),2) AS 'AVG Salary'
FROM "salaries"
GROUP BY "year"
ORDER BY "year" DESC;
