-- Para entender las expectativas del equipo para su base de datos, 
-- te sentaste a hablar con ellos después de que la tienda cerrara por el día.

-- Ingredientes
-- Sin duda necesitamos llevar un registro de nuestros ingredientes. 
-- Algunos de los ingredientes típicos que usamos incluyen harina, levadura, 
-- aceite, mantequilla y varios tipos diferentes de azúcar. 
-- Además, nos encantaría llevar un registro del precio que pagamos por unidad 
-- de ingrediente (ya sea en libras, gramos, etc.).

-- Donas
-- Necesitaremos incluir nuestra selección de donas, ¡pasadas y presentes! 
-- Para cada dona en el menú, nos gustaría incluir tres cosas:
-- - El nombre de la dona
-- - Si la dona es libre de gluten
-- - El precio por dona
-- Oh, y es importante que podamos consultar los ingredientes de cada una de las donas!

-- Pedidos
-- Nos encanta ver a los clientes en persona, aunque nos damos cuenta 
-- de que un buen número de personas podrían pedir en línea hoy en día. 
-- Nos gustaría poder llevar un registro de esos pedidos en línea. 
-- Creemos que necesitaríamos almacenar:
-- - Un número de pedido, para llevar un registro de cada pedido internamente
-- - Todas las donas en el pedido
-- - El cliente que realizó el pedido. Supongamos que podríamos asumir 
-- que solo un cliente realiza un pedido dado.

-- Clientes
-- Oh, y nos damos cuenta de que sería encantador llevar un registro 
-- de alguna información sobre cada uno de nuestros clientes. 
-- Nos encantaría recordar la historia de los pedidos que han realizado. 
-- En ese caso, creemos que deberíamos almacenar:
-- - El nombre y apellido de un cliente
-- - Un historial de sus pedidos


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


