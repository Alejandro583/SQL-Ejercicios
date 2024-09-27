SELECT "districts"."name","expenditures"."pupils" FROM "districts"
JOIN "expenditures"
ON "districts"."id" = "expenditures"."district_id"
WHERE "expenditures"."pupils" >=
    (SELECT AVG("expenditures"."pupils")
     FROM "expenditures")
ORDER BY "expenditures"."pupils" DESC,"districts"."name" ASC;
