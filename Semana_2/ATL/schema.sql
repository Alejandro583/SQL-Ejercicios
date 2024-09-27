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

