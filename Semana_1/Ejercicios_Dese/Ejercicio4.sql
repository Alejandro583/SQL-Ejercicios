--## 4.sql
--Algunas ciudades tienen más escuelas públicas que otras. En `4.sql`, escribe una consulta SQL 
--para encontrar las 10 ciudades con más escuelas públicas. Tu consulta debe devolver los nombres
--de las ciudades y el número de escuelas públicas dentro de ellas, ordenadas de mayor a menor 
--número de escuelas públicas. Si dos ciudades tienen el mismo número de escuelas públicas, ordénalas alfabéticamente.

SELECT "city" ,COUNT("city") FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
ORDER BY COUNT("city") DESC , "city" ASC LIMIT 10;

