-- 7.sql: Enumera los títulos en inglés de las 5 impresiones más brillantes de Hiroshige.

SELECT "english_title" FROM "views"
WHERE "artist" = 'Hiroshige'
ORDER BY "brightness" DESC LIMIT 5;
