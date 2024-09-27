-- 4.sql: Cuenta cuántas impresiones de Hiroshige tienen títulos en inglés que se refieren a la "Eastern Capital".

SELECT COUNT("english_title") FROM "views"
WHERE "english_title" LIKE '%Eastern Capital%'
AND "artist" = 'Hiroshige';
