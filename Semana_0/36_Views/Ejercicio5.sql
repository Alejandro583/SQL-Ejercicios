-- 5.sql: Encuentra el valor de contraste más alto de las impresiones de Hokusai.

SELECT MAX("contrast") AS 'Maximun Contrast'
FROM "views" WHERE "artist" = 'Hokusai';

