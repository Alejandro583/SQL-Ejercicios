-- ejercicio7: Consultas para enumerar títulos y temas de episodios que enseñan fracciones.

SELECT "title", "topic" FROM "episodes"
WHERE "topic" LIKE '%fractions%';
