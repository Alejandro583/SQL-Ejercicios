-- 5.sql: Devuelve el nombre y apellido de todos los bateadores diestros,
-- ordenados alfabéticamente.

SELECT "first_name", "last_name" FROM "players"
WHERE "bats" = 'R' ORDER BY "first_name","last_name";
