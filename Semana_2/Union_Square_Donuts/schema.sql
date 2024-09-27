CREATE TABLE "ingredientes"(
    "id" NUMERIC,
    "ingrediente" TEXT,
    "precio" REAL,
    PRIMARY KEY ("id")
);


CREATE TABLE "donuts_ingredientes" (
    "id_donut" INTEGER,
    "id_ingrediente" INTEGER,
    PRIMARY KEY ("id_donut", "id_ingrediente"),
    FOREIGN KEY ("id_donut") REFERENCES "donuts"("id"),
    FOREIGN KEY ("id_ingrediente") REFERENCES "ingredientes"("id")
);


CREATE TABLE "donuts"(
    "id" NUMERIC,
    "nombre" TEXT,
    "tipo" TEXT NOT NULL CHECK("tipo" IN ('Con Gluten','Sin Gluten')),
    "precio" REAL,
    PRIMARY KEY ("id")
);

CREATE TABLE "pedidos"(
    "id" NUMERIC,
    "numero_pedido" NUMERIC,
    "fecha_pedido" TEXT,
    "id_cliente" NUMERIC,
    PRIMARY KEY ("id"),
    FOREIGN KEY("id_cliente") REFERENCES "clientes"("id")
);

CREATE TABLE "pedido_donuts"(
    "id" NUMERIC,
    "cantidad" NUMERIC,
    "id_pedido" NUMERIC,
    "id_donuts" NUMERIC,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("id_pedido") REFERENCES "pedidos"("id"),
    FOREIGN KEY ("id_donuts") REFERENCES "donuts"("id")
);

CREATE TABLE "clientes"(
    "id" NUMERIC,
    "nombre" TEXT,
    "apellido" TEXT,
    PRIMARY KEY ("id")
);


