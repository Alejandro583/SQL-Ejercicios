-- 9.sql: Encuentra el título en inglés y el artista de la impresión con el brillo más alto.

SELECT "english_title","artist" FROM "views"
WHERE "brightness" = (SELECT MAX("brightness") FROM "views");
