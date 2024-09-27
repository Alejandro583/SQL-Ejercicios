-- Tu tarea es decodificar el cifrado que te dejó el detective. 
-- Cómo lo hagas depende de ti, pero debes asegurarte de que, al final de tu proceso, 
-- tengas una vista estructurada de la siguiente manera:

-- La vista debe llamarse "message".
-- La vista debe tener una única columna llamada "phrase".
-- Cuando se ejecute la siguiente consulta SQL en private.db, 
-- tu vista debe devolver una sola columna en la que cada fila sea una frase del mensaje.
-- SELECT "phrase" FROM "message";

-- En private.sql, debes escribir todas las sentencias SQL requeridas 
-- para replicar la creación de la vista. Es decir:

-- Si la creación de la vista requiere crear una tabla separada e insertar datos en ella, 
-- debes asegurarte de que private.sql contenga las sentencias para crear esa tabla 
-- e insertar esos datos. (¡No dudes en añadir tablas y datos como desees!)

-- private.sql, al ejecutarse en una nueva instancia de private.db, 
-- debe ser capaz de reconstruir completamente tu vista.

-- Consejo:
-- Resulta que SQLite viene con una función que implementa 
-- la funcionalidad del cifrado de libro: substr. 
-- La función substr toma tres entradas (“argumentos”):

-- Un string (es decir, texto) del cual tomar un substring 
-- (es decir, un subconjunto de los caracteres del string)
-- El carácter inicial del substring, identificado por su número 
-- (el primer carácter es 1)
-- La longitud del substring

-- Por ejemplo, supongamos que tienes una tabla llamada sentences que incluye lo siguiente:

-- id
-- 1
-- sentence
-- ¡Así es!
-- id
-- 2
-- sentence
-- No has observado.
-- id
-- 3
-- sentence
-- Y sin embargo, has visto.

-- Si ejecutas la siguiente consulta SQL…

-- SELECT substr("sentence", 1, 2)
-- FROM "sentences";

-- recibirías los siguientes resultados:

-- substr(“sentence”, 1, 2)
-- ¡Así
-- substr(“sentence”, 1, 2)
-- No
-- substr(“sentence”, 1, 2)
-- Y 
-- Ten en cuenta que los otros argumentos para substr también pueden ser columnas enteras.

CREATE TABLE "triplets"(
    "sentence_id" INTEGER,
    "start_char" INTEGER,
    "length" INTEGER
);


INSERT INTO "triplets"("sentence_id","start_char","length")
VALUES
(14,98,4),
(114,3,5),
(618,72,9),
(630,7,3),
(932,12,5),
(2230,50,7),
(2346,44,10),
(3041,14,5);

CREATE VIEW "message" AS
SELECT substr("sentence", "start_char","length") AS "phrase" FROM "triplets"
JOIN "sentences" ON sentences.id = triplets.sentence_id;


