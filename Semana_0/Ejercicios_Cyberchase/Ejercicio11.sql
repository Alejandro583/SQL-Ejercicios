-- ejercicio11: Consultas que enumeran títulos de episodios de la temporada 5 en orden alfabético inverso.

SELECT "title" FROM "episodes"
WHERE "season" = 5  ORDER BY "title" DESC;
