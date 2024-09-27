-- 8.sql: Enumera los títulos en inglés de las 5 impresiones con el menor contraste de Hokusai.

SELECT "english_title" FROM "views"
WHERE "artist" = 'Hokusai'
ORDER BY "contrast" LIMIT 5;
