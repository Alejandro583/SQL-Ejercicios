--# Base de Datos SQLite para ATL

--Tu tarea consiste en crear una base de datos SQLite para ATL desde cero, mediante la escritura de un conjunto de sentencias 
--`CREATE TABLE`  en un archivo `schema.sql`. Los detalles de implementación son a tu elección, aunque debes asegurarte, como mínimo,
--de que tu base de datos cumpla con los requisitos del aeropuerto y que pueda representar los datos de muestra proporcionados.

--## Requisitos

--Para entender los requisitos de ATL para su base de datos, te sentaste a tener una conversación 
--con el Gerente General Asistente de Operaciones de TI.

--### Pasajeros

--En lo que respecta a nuestros pasajeros, solo necesitamos tener lo esencial:
--el nombre, el apellido y la edad. Eso es todo lo que necesitamos saber; nada más.

--### Check-Ins

--Cuando los pasajeros llegan a ATL, a menudo se “registran” para sus vuelos. 
--Eso significa que nos están informando que están aquí y listos para abordar.
--Nos gustaría mantener un registro ordenado de tales momentos.
--¿Y qué necesitamos registrar, preguntas? Bueno, esto es lo que necesitamos:

-- La fecha y hora exactas en las que nuestro pasajero se registró.
-- El vuelo para el cual se están registrando, por supuesto. No podemos perder de vista a dónde se dirigen, ¿verdad?

--### Aerolíneas

--ATL es un centro para muchas aerolíneas nacionales e internacionales: 
--nombres como Delta, British Airways, Air France, Korean Air y Turkish Airlines.
--La lista continúa. Así que esto es lo que rastreamos:

-- El nombre de la aerolínea.
-- El “concourse” o, por así decirlo, la sección de nuestro aeropuerto donde opera la aerolínea.
--Tenemos 7 concourses: A, B, C, D, E, F y T.

--### Vuelos

--Atendemos hasta 1,000 vuelos diarios. Para asegurarnos de que nuestros pasajeros
--nunca queden preguntándose, necesitamos darles todos los detalles críticos sobre su vuelo.
--Esto es lo que nos gustaría almacenar:

-- El número de vuelo. Por ejemplo, “900”. Solo ten en cuenta que a veces reutilizamos números de vuelo.
-- La aerolínea que opera el vuelo. Puedes mantenerlo simple y suponer que un vuelo es operado por una sola aerolínea.
-- El código del aeropuerto del que están saliendo. Por ejemplo, “ATL” o “BOS”.
-- El código del aeropuerto al que se dirigen.
-- La fecha y hora de salida esperadas (¡hasta el minuto, por supuesto!).
-- La fecha y hora de llegada esperadas, con la misma precisión.




CREATE TABLE "pasajeros"(
    "id" NUMERIC,
    "nombre" TEXT,
    "apellido" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "check_in"(
    "id" NUMERIC,
    "fecha_hora_registro" NUMERIC,
    "id_pasajero" NUMERIC,
    "id_vuelo" NUMERIC,
    PRIMARY KEY ("id"),
    FOREIGN KEY("id_pasajero") REFERENCES "pasajeros"("id"),
    FOREIGN KEY("id_vuelo") REFERENCES "vuelos"("id")
);

CREATE TABLE "aerolineas"(
    "id" NUMERIC,
    "nombre_aerolinea" TEXT,
    "seccion" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "vuelos"(
    "id" NUMERIC,
    "numero_vuelo" NUMERIC,
    "codigo_salida" TEXT,
    "codigo_destino" TEXT,
    "fecha_hora_salida" TEXT,
    "fecha_hora_legada" TEXT,
    "id_aerolinea" NUMERIC,
    PRIMARY KEY("id"),
    FOREIGN KEY("id_aerolinea") REFERENCES "aerolineas"("id")
);

