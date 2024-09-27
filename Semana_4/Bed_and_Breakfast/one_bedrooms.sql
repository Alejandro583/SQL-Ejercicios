-- En one_bedrooms.sql, escribe una declaración SQL para crear una vista llamada one_bedrooms.
-- Esta vista debe contener todas las listas que tienen exactamente una habitación.
-- Asegúrate de que la vista contenga las siguientes columnas:

-- id, que es el ID de la lista de la tabla listings.
-- property_type, de la tabla listings.
-- host_name, de la tabla listings.
-- accommodates, de la tabla listings.



CREATE VIEW "one_bedrooms" AS
SELECT "id","property_type","host_name","accommodates"
FROM "listings"
WHERE "bedrooms" = 1;
