-- 9.sql: Encuentra a los jugadores que jugaron su último juego en la MLB en 2022,
-- ordenando alfabéticamente por nombre y luego por apellido.

SELECT "first_name", "last_name" FROM "players"
WHERE "final_game" LIKE '2022-__-__'
ORDER BY "first_name", "last_name";
