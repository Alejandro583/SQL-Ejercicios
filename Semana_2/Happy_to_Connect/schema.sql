-- Tu tarea consiste en crear una base de datos SQLite para LinkedIn desde cero, 
-- mediante la escritura de un conjunto de sentencias CREATE TABLE en un archivo schema.sql. 
-- Los detalles de implementación son a tu elección, aunque debes asegurarte, como mínimo, 
-- de que tu base de datos cumpla con las especificaciones de la plataforma y que pueda 
-- representar los datos de muestra proporcionados.

-- Plataforma

-- Usuarios
-- El corazón de la plataforma de LinkedIn son sus personas. 
-- Tu base de datos debe ser capaz de representar la siguiente información sobre los usuarios de LinkedIn:
-- - Su nombre y apellido
-- - Su nombre de usuario
-- - Su contraseña
-- Ten en cuenta que, si una empresa sigue las mejores prácticas, 
-- las contraseñas de las aplicaciones están "hasheadas". 
-- No necesitas preocuparte por hashear contraseñas aquí.

-- Escuelas y Universidades
-- LinkedIn también permite cuentas oficiales de escuelas o universidades, 
-- como la de Harvard, para que los exalumnos (es decir, aquellos que han asistido) 
-- puedan identificar su afiliación. Asegúrate de que la base de datos de LinkedIn 
-- pueda almacenar la siguiente información sobre cada escuela:
-- - El nombre de la escuela
-- - El tipo de escuela (por ejemplo, "Escuela Primaria", "Escuela Secundaria", 
-- "Escuela Preparatoria", "Escuela Inferior", "Escuela Superior", "Colegio", "Universidad", etc.)
-- - La ubicación de la escuela
-- - El año en que se fundó la escuela

-- Empresas
-- LinkedIn permite a las empresas crear sus propias páginas, 
-- como la de LinkedIn, para que los empleados puedan identificar su empleo 
-- pasado o actual con la empresa. Asegúrate de que la base de datos de LinkedIn 
-- pueda almacenar la siguiente información para cada empresa:
-- - El nombre de la empresa
-- - La industria de la empresa (por ejemplo, "Educación", "Tecnología", "Finanzas", etc.)
-- - La ubicación de la empresa

-- Conexiones
-- Y finalmente, la esencia de LinkedIn es su capacidad para facilitar 
-- conexiones entre personas. Asegúrate de que la base de datos de LinkedIn 
-- pueda soportar cada una de las siguientes conexiones.

-- Conexiones con Personas
-- La base de datos de LinkedIn debe poder representar conexiones mutuas 
-- (recíprocas, bidireccionales) entre usuarios. 
-- No necesitas preocuparte por conexiones unidireccionales, 
-- como que el usuario A "siga" al usuario B sin que el usuario B "siga" al usuario A.

-- Conexiones con Escuelas
-- Un usuario debe poder crear una afiliación con una determinada escuela. 
-- Y de manera similar, esa escuela debería poder encontrar a sus exalumnos. 
-- Además, permite que un usuario defina:
-- - La fecha de inicio de su afiliación (es decir, cuando comenzó a asistir a la escuela)
-- - La fecha de finalización de su afiliación (es decir, cuando se graduó), si aplica
-- - El tipo de grado obtenido/pursued (por ejemplo, "BA", "MA", "PhD", etc.)

-- Conexiones con Empresas
-- Un usuario debe poder crear una afiliación con una determinada empresa. 
-- Y de manera similar, una empresa debería poder encontrar a sus empleados actuales y pasados. 
-- Además, permite que un usuario defina:
-- - La fecha de inicio de su afiliación (es decir, la fecha en que comenzó a trabajar con la empresa)
-- - La fecha de finalización de su afiliación (es decir, cuando dejó la empresa), si aplica
-- - El título que tenía mientras estaba afiliado a la empresa


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

