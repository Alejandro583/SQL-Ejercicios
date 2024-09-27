--## 5.sql
--DESE quiere que determines en qué ciudades podrían necesitarse más escuelas públicas. 
--En `5.sql`, escribe una consulta SQL para encontrar ciudades con 3 o menos escuelas públicas. 
--Tu consulta debe devolver los nombres de las ciudades y el número de escuelas públicas dentro de ellas, 
--ordenadas de mayor a menor número de escuelas públicas. Si dos ciudades tienen el mismo número de escuelas públicas,
--ordénalas alfabéticamente.

SELECT city, COUNT(*) AS num_schools
FROM schools
WHERE type = 'Public School'
GROUP BY city
HAVING num_schools <= 3
ORDER BY num_schools DESC, city ASC;

