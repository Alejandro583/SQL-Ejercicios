SELECT "districts"."name","expenditures"."per_pupil_expenditure"
FROM "districts"
JOIN "expenditures"
ON "districts"."id" = "expenditures"."district_id"
WHERE "type" LIKE 'Public%'
ORDER BY "per_pupil_expenditure" DESC LIMIT 10;

