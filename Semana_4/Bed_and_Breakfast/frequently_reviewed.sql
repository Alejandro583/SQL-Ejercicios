-- En frequently_reviewed.sql, escribe una declaración SQL para crear una vista llamada frequently_reviewed.
-- Esta vista debe contener los 100 listados más revisados, ordenados de mayor a menor cantidad de reseñas.
-- Asegúrate de que la vista contenga las siguientes columnas:

-- id, que es el ID de la lista de la tabla listings.
-- property_type, de la tabla listings.
-- host_name, de la tabla listings.
-- reviews, que es el número de reseñas que ha recibido el listado.


CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id", "property_type", "host_name",COUNT("listing_id") AS 'reviews'
FROM "listings" JOIN "reviews" ON "listings"."id" = "reviews"."listing_id"
GROUP BY "listing_id"
ORDER BY COUNT("listing_id") DESC,"property_type" , "host_name" LIMIT 100;
