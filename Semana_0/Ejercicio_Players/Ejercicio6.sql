-- 6.sql: Devuelve nombre, apellido y fecha de debut de los jugadores nacidos en Pittsburgh, PA,
-- ordenados por fecha de debut (de la más reciente a la más antigua) y alfabéticamente.

SELECT "first_name", "last_name", "debut"
FROM "players"
WHERE "birth_city" = 'Pittsburgh'
ORDER BY "debut" DESC ,"first_name", "last_name" ASC;
