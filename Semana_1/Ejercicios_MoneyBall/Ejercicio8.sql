SELECT "salaries"."salary"
FROM "salaries"
JOIN "performances"
ON "salaries"."player_id" = "performances"."player_id"
WHERE "performances"."HR" = (
    SELECT MAX("performances"."HR") FROM "performances"
    WHERE "performances"."year" = 2001
    ORDER BY MAX("performances"."HR") DESC
    LIMIT 1
) AND "performances"."year" = 2001
AND "salaries"."salary" != 10658826
ORDER BY "salaries"."salary" DESC
LIMIT 1;
