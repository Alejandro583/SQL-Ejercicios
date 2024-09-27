-- 2.sql: Enumera los colores promedio de las impresiones de Hokusai que contienen "river" en el título en inglés.

SELECT "average_color" FROM "views"
WHERE "english_title" LIKE '%river%'
AND "artist" = 'Hokusai';
