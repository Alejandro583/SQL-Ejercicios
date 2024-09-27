-- 10.sql: Escribe una consulta SQL para responder una pregunta de tu elección,
-- utilizando AS para renombrar una columna, al menos una condición 
-- WHERE y ordenando por al menos una columna.

SELECT "first_name", "last_name", "height" AS 'Tallest Player NY'
WHERE "birth_state" = 'NY' ORDER BY "height" DESC;
