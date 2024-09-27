--## 1.sql
--Comienza obteniendo una idea de cómo han cambiado los salarios promedio 
--de los jugadores a lo largo del tiempo. En `1.sql`, escribe una consulta 
--SQL para encontrar el salario promedio de los jugadores por año.

-- Ordena por año en orden descendente.
-- Redondea el salario a dos decimales y llama a la columna “average salary”.
-- Tu consulta debe devolver una tabla con dos columnas: una para el año y otra para el salario promedio.


SELECT "year" ,ROUND(AVG("salary"),2) AS 'AVG Salary'
FROM "salaries"
GROUP BY "year"
ORDER BY "year" DESC;
