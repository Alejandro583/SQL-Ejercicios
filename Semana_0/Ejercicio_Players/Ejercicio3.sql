-- 3.sql: Encuentra los identificadores de filas donde falta el valor en la columna de debut.

SELECT "id" FROM "players"
WHERE "debut" IS NULL;
