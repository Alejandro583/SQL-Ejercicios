-- 1.sql: Encuentra la ciudad natal de Jackie Robinson (incluyendo ciudad, estado y país).

SELECT "birth_city", "birth_state", "birth_country"
FROM "players" WHERE "firts_name" = 'Jackie'
AND "last_name" = 'Robinson';
