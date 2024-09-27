CREATE TABLE "usuarios"(
    "id" NUMERIC,
    "nombre_usuario" TEXT,
    "nombre" TEXT,
    "apellido" TEXT,
    "pasword" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "instituciones"(
    "id" NUMERIC,
    "nombre" TEXT,
    "tipo" TEXT,
    "direccion" TEXT,
    "fundacion" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "empresas"(
    "id" NUMERIC,
    "nombre" TEXT,
    "industria" TEXT,
    "direccion" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "conexion_persona"(
    "id" NUMERIC,
    "fecha_de_conexion" TEXT,
    "id_usuario_1" NUMERIC,
    "id_usuario_2" NUMERIC,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("id_usuario_1") REFERENCES "usuarios"("id"),
    FOREIGN KEY ("id_usuario_2") REFERENCES "usuarios"("id")
);

CREATE TABLE "conexion_institucion"(
    "id" NUMERIC,
    "inicio_afiliacion" TEXT,
    "fin_afiliacion" TEXT,
    "tipo_titulo" TEXT,
    "id_usuario" NUMERIC,
    "id_instituto" NUMERIC,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("id_instituto") REFERENCES "instituciones"("id"),
    FOREIGN KEY ("id_usuario") REFERENCES "usuarios"("id")
);

CREATE TABLE "conexion_empresa"(
    "id" NUMERIC,
    "inicio_afiliacion" TEXT,
    "fin_afiliacion" TEXT,
    "cargo" TEXT,
    "id_usuario" NUMERIC,
    "id_empresa" NUMERIC,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("id_usuario") REFERENCES "usuarios"("id"),
    FOREIGN KEY ("id_empresa") REFERENCES "empresas"("id")
);

