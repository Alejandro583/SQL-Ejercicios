-- ejercicio8: Consultas que cuentan episodios lanzados entre 2018 y 2023.

SELECT COUNT("title") FROM "episodes"
WHERE "air_date" BETWEEN '2018-01-01'
AND '2023-12-31';
