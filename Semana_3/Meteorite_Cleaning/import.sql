
CREATE TABLE "temporal"(
    "name" TEXT,
    "id" INTEGER,
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" REAL,
    long REAL,
    PRIMARY KEY('id')
);


.import --csv --skip 1 meteorites.csv temporal

UPDATE temporal
SET mass = NULL
WHERE mass = 0;

UPDATE temporal
SET lat = NULL
WHERE lat = 0;

UPDATE temporal
SET long = NULL
WHERE long = 0;

UPDATE temporal
SET year = NULL
WHERE year = 0;

UPDATE temporal
SET year = NULL
WHERE year LIKE '';

UPDATE temporal
SET mass = ROUND(mass,2),
    lat  = ROUND(lat,2),
    long = ROUND(long,2);


CREATE TABLE "meteorites"(
    "name" TEXT,
    "id" INTEGER,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" REAL,
    long REAL,
    PRIMARY KEY('id')
);

INSERT INTO "meteorites" ("name","class","mass","discovery","year","lat","long")
SELECT "name","class","mass","discovery","year","lat","long" FROM "temporal"
WHERE "nametype" NOT LIKE '%relict%'
ORDER BY "year", "name";
