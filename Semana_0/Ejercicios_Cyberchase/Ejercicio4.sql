-- ejercicio4: Consultas para encontrar títulos de episodios sin un tema listado.

SELECT "title" FROM "episodes"
WHERE "topic" IS NULL;
