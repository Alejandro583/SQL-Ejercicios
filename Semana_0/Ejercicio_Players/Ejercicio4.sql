-- 4.sql: Encuentra el nombre y apellidos de los jugadores no nacidos en los Estados Unidos,
-- ordenando alfabéticamente por nombre y luego por apellido.

SELECT "first_name", "last_name" FROM "players"
WHERE "birth_country" != 'USA'
ORDER BY "first_name","last_name";
