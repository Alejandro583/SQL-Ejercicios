-- 3.sql: Cuenta cuántas impresiones de Hokusai incluyen "Fuji" en el título en inglés.

SELECT COUNT("english_title") FROM "views"
WHERE "english_title" LIKE '%Fuji%'
AND "artist" = 'Hokusai';

