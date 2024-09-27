-- En import.sql, escribe una serie de declaraciones SQL (y SQLite) para importar y limpiar 
-- los datos de meteorites.csv en una tabla llamada meteorites, en una base de datos llamada meteorites.db.

-- Dentro de meteorites.db, la tabla meteorites debe tener las siguientes columnas:

-- Columnas en la tabla meteorites
-- Ten en cuenta que no todas las columnas en el CSV deben terminar en la tabla final.

-- Para considerar que los datos en la tabla meteorites están limpios, debes asegurarte de que...

-- Cualquier valor vacío en meteorites.csv esté representado por NULL en la tabla meteorites.
-- Ten en cuenta que las columnas mass, year, lat y long tienen valores vacíos en el CSV.
-- Todas las columnas con valores decimales (por ejemplo, 70.4777) deben redondearse al 
-- lugar de los centésimos más cercano (por ejemplo, 70.4777 se convierte en 70.48).
-- Ten en cuenta que las columnas mass, lat y long tienen valores decimales.
-- Todos los meteoritos con el nametype “Relict” no deben incluirse en la tabla meteorites.
-- Los meteoritos deben estar ordenados por año, de más antiguo a más nuevo, y luego—si 
-- dos meteoritos aterrizaron en el mismo año—por nombre, en orden alfabético.
-- Has actualizado los IDs de los meteoritos de meteorites.csv, de acuerdo con el orden 
-- especificado en el punto #4.
-- El id de los meteoritos debe comenzar en 1, comenzando con el meteorito que aterrizó 
-- en el año más antiguo y es el primero en orden alfabético para ese año.


-- Crear una tabla temporal para importar los datos de meteorites.csv
CREATE TABLE "temporal" (
    "name" TEXT,
    "id" INTEGER,
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY("id")
);

-- Importar los datos del archivo CSV a la tabla temporal
-- Asumimos que el archivo meteorites.csv tiene encabezados en la primera fila
.import --csv --skip 1 meteorites.csv temporal

-- Limpiar los datos en la tabla temporal, representando los valores vacíos como NULL
-- Convertir valores 0 o vacíos a NULL para mass, lat, long y year
UPDATE temporal
SET mass = NULL
WHERE mass = 0 OR mass IS NULL;

UPDATE temporal
SET lat = NULL
WHERE lat = 0 OR lat IS NULL;

UPDATE temporal
SET long = NULL
WHERE long = 0 OR long IS NULL;

UPDATE temporal
SET year = NULL
WHERE year = 0 OR year LIKE '';

-- Redondear los valores decimales de mass, lat y long al segundo decimal (centésimos)
UPDATE temporal
SET mass = ROUND(mass, 2),
    lat  = ROUND(lat, 2),
    long = ROUND(long, 2);

-- Crear la tabla final "meteorites" con las columnas necesarias
CREATE TABLE "meteorites" (
    "name" TEXT,
    "id" INTEGER,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY("id")
);

-- Insertar en la tabla final solo los meteoritos que no tienen el nametype "Relict"
-- Ordenar por año, y si hay más de uno en el mismo año, ordenar alfabéticamente por nombre
INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long"
FROM "temporal"
WHERE "nametype" NOT LIKE '%Relict%'
ORDER BY "year", "name";

-- ¡Listo! Los datos de la tabla meteorites ahora están limpios y organizados.
