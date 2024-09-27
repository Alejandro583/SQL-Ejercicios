-- 10.sql: Escribe una consulta SQL que responda a una pregunta de tu elección sobre las impresiones,
-- utilizando AS para renombrar una columna, incluyendo al menos una condición WHERE 
-- y ordenando por al menos una columna con ORDER BY.

SELECT "english_title" AS 'Title',"print_number" AS 'Print Number'
FROM "views"
WHERE "Entropy" > 7.5 ORDER BY "print_number";

