# 36 Views - Ejercicios de SQL

## Problema a Resolver

La base de datos `views.db` contiene detalles sobre 72 impresiones, incluyendo estadísticas como color promedio, brillo, contraste y entropía. A través de consultas SQL, se busca obtener información sobre estas impresiones y sus composiciones.

## Estructura de la Base de Datos

La base de datos `views.db` contiene una única tabla llamada `views`, que tiene las siguientes columnas:

- **id**: Identificador único para cada impresión.
- **print_number**: Número de la impresión en la serie de Hokusai o Hiroshige.
- **english_title**: Título de la impresión en inglés.
- **japanese_title**: Título de la impresión en japonés.
- **artist**: Apellido del artista de la impresión.
- **average_color**: Representación hexadecimal del color promedio de la imagen.
- **brightness**: Número que representa la claridad u oscuridad general de la imagen.
- **contrast**: Número que representa la diferencia entre áreas claras y oscuras de la imagen.
- **entropy**: Medida utilizada para cuantificar la complejidad de la obra.

