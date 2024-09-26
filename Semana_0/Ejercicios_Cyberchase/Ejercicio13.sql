SELECT "title", "topic" FROM "episodes"
WHERE "air_date" BETWEEN '2002-01-01'
AND '2023-12-31' AND "topic" IS NOT NULL;
