SELECT "performances"."year","performances"."HR"
FROM "performances" JOIN "players"
ON "players"."id" = "performances"."player_id"
WHERE "players"."first_name" = 'Ken'
AND "players"."birth_year" = 1969
GROUP BY "performances"."year"
ORDER BY "performances"."year" DESC;
