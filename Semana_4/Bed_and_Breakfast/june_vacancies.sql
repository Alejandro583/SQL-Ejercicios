-- En june_vacancies.sql, escribe una declaración SQL para crear una vista llamada june_vacancies.
-- Esta vista debe contener todos los listados y el número de días en junio de 2023 que permanecieron vacantes.
-- Asegúrate de que la vista contenga las siguientes columnas:

-- id, que es el ID de la lista de la tabla listings.
-- property_type, de la tabla listings.
-- host_name, de la tabla listings.
-- days_vacant, que es el número de días en junio de 2023 que el listado dado fue marcado como disponible.


CREATE VIEW "june_vacancies" AS
SELECT "listings"."id","properrty_type","host_name",COUNT("date") AS 'days_vacant' FROM "listings"
JOIN "availabilities" ON "listings"."id" = "availabilities"."listing_id"
WHERE "date" LIKE '%2023-06-__%' AND "available" = 'TRUE'
GROUP BY "listing_id";
