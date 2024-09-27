En este conjunto de problemas resolvemos la implementación de tres bases de datos en SQLite, cada una diseñada para cumplir con requisitos específicos de diferentes aplicaciones: LinkedIn, Union Square Donuts y ATL.

Base de Datos de LinkedIn:

Se centra en la representación de usuarios, escuelas, empresas y conexiones.
Se registran detalles de usuarios como nombre, apellido, nombre de usuario y contraseña.
La base de datos también almacena información sobre escuelas y empresas, incluyendo su nombre, tipo y ubicación.
Se modelan conexiones entre usuarios, escuelas y empresas, permitiendo registrar afiliaciones y fechas relevantes.

Base de Datos de Union Square Donuts:

Diseñada para gestionar los ingredientes, donas y pedidos en una tienda de donas.
La base de datos incluye tablas para registrar ingredientes con su precio por unidad, donas con detalles sobre gluten y precios, y pedidos que registran la información del cliente y las donas solicitadas.
Permite realizar consultas sobre los ingredientes utilizados en cada tipo de dona.

Base de Datos de ATL (Aeropuerto de Atlanta):

Estructurada para manejar la información de pasajeros, check-ins, aerolíneas y vuelos.
Se registran datos básicos de pasajeros y se mantiene un seguimiento de los check-ins, incluyendo la fecha y hora de registro y el vuelo correspondiente.
La base de datos gestiona información sobre aerolíneas y vuelos, asegurando que se almacenen detalles críticos como números de vuelo y horarios de salida y llegada.
Estas bases de datos han sido desarrolladas desde cero mediante sentencias CREATE TABLE en archivos schema.sql, cumpliendo con los requisitos establecidos y representando datos de muestra relevantes.
