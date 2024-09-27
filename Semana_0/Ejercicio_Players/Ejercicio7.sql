-- 7.sql: Cuenta el número de jugadores que batean con la mano derecha
-- y lanzan con la mano izquierda, o viceversa.

SELECT COUNT("first_name") FROM "players"
WHERE ("bats" = 'R' AND "throws" = 'L')
OR ("bats" = 'L' AND "throws" = 'R');
