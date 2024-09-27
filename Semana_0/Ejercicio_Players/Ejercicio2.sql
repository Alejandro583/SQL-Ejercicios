-- 2.sql: Encuentra el lado en el que Babe Ruth bateó.

SELECT "bats" FROM "players"
WHERE "firts_name" = 'Babe'
AND "last_name" = 'Ruth' ;
