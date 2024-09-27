-- En available.sql, escribe una declaración SQL para crear una vista llamada available.
-- Esta vista debe contener todas las fechas que están disponibles en todas las listas.
-- Asegúrate de que la vista contenga las siguientes columnas:

-- id, que es el ID de la lista de la tabla listings.
-- property_type, de la tabla listings.
-- host_name, de la tabla listings.
-- date, de la tabla availabilities, que es la fecha de disponibilidad.


CREATE VIEW "available" AS
SELECT "listings"."id","properrty_type","host_name","date" FROM "listings"
JOIN "availabilities" ON "listings"."id" = "availabilities"."listing_id"
WHERE "available" = 'TRUE';
