-- Consultas para enumerar el primer episodio de cada temporada.

SELECT "season", "title" FROM "episodes"
WHERE "episode_in_season" = 1;
