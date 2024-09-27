## Estructura de la Base de Datos (bnb.db)

Dentro de `bnb.db`, encontrarás tres tablas que implementan las relaciones descritas en el diagrama ER anterior.

### Tabla listings
La tabla `listings` contiene las siguientes columnas:

- **id**: el ID de la lista.
- **property_type**: el tipo de la lista (por ejemplo, "Unidad de alquiler completa", "Habitación privada en unidad de alquiler", etc.).
- **host_name**: el nombre de usuario de AirBnB del anfitrión de la lista.
- **accommodates**: el número máximo de ocupantes de la lista.
- **bedrooms**: el número de habitaciones de la lista.
- **description**: la descripción de la lista en AirBnB.

### Tabla reviews
La tabla `reviews` contiene las siguientes columnas:

- **id**: el ID de la reseña.
- **listing_id**: el ID de la lista que recibió la reseña.
- **date**: la fecha en que se publicó la reseña.
- **reviewer_name**: el nombre de usuario de AirBnB del revisor.
- **comments**: el contenido de la reseña.

### Tabla availabilities
La tabla `availabilities` contiene las siguientes columnas:

- **id**: el ID de la disponibilidad.
- **listing_id**: el ID de la lista asociado con la disponibilidad.
- **date**: la fecha de la disponibilidad.
- **available**: si la fecha todavía está disponible para ser reservada (VERDADERO o FALSO).
- **price**: el precio de la estadía en la fecha dada.

