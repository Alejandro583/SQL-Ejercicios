-- ejercicio9: Consultas que cuentan episodios lanzados entre 2002 y 2007.

SELECT COUNT("titles") FROM "episodes"
WHERE "air_date" BETWEEN '2002-01-01'
AND '2007-12-31';
