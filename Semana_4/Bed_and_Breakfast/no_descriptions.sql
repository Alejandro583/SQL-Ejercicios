
--La columna description contiene descripciones 
-- con muchos saltos de línea, cada uno de los cuales se imprime en tu terminal.

-- En no_descriptions.sql, escribe una declaración SQL para crear una vista llamada no_descriptions 
-- que incluya todas las columnas de la tabla listings excepto description.


CREATE VIEW "no_descriptions" AS
SELECT "id","property_type","host_name","accommodates",
"bedrooms" FROM "listings";
