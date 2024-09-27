-- 6.sql: Calcula la entropía promedio de las impresiones de Hiroshige, redondeada a dos decimales.

SELECT ROUND(AVG("entropy"),2) AS 'Hiroshige Average Entropy'
FROM "views" WHERE "artist" = 'Hiroshige';

