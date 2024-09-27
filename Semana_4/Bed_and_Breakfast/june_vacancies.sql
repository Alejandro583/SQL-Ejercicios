CREATE VIEW "june_vacancies" AS
SELECT "listings"."id","properrty_type","host_name",COUNT("date") AS 'days_vacant' FROM "listings"
JOIN "availabilities" ON "listings"."id" = "availabilities"."listing_id"
WHERE "date" LIKE '%2023-06-__%' AND "available" = 'TRUE'
GROUP BY "listing_id";
