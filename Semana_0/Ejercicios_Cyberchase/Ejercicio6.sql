-- ejercicio6: Consultas para listar episodios de la temporada 6 lanzados a principios de 2007.

SELECT "title" FROM "episodes"
WHERE "air_date" LIKE '2007%' AND "season" = 6;
