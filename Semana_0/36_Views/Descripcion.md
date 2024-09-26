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

## Ejercicios

1. **1.sql**: Lista los títulos en japonés e inglés para cada impresión.
2. **2.sql**: Enumera los colores promedio de las impresiones de Hokusai que contienen "river" en el título en inglés.
3. **3.sql**: Cuenta cuántas impresiones de Hokusai incluyen "Fuji" en el título en inglés.
4. **4.sql**: Cuenta cuántas impresiones de Hiroshige tienen títulos en inglés que se refieren a la "Eastern Capital".
5. **5.sql**: Encuentra el valor de contraste más alto de las impresiones de Hokusai.
6. **6.sql**: Calcula la entropía promedio de las impresiones de Hiroshige, redondeada a dos decimales.
7. **7.sql**: Enumera los títulos en inglés de las 5 impresiones más brillantes de Hiroshige.
8. **8.sql**: Enumera los títulos en inglés de las 5 impresiones con el menor contraste de Hokusai.
9. **9.sql**: Encuentra el título en inglés y el artista de la impresión con el brillo más alto.
10. **10.sql**: Escribe una consulta SQL que responda a una pregunta de tu elección sobre las impresiones, utilizando `AS` para renombrar una columna, incluyendo al menos una condición `WHERE` y ordenando por al menos una columna con `ORDER BY`.

## Cómo Usar

Para probar los ejercicios, puedes utilizar la base de datos proporcionada junto con los archivos de consulta `.sql`. Para ejecutar las consultas, utiliza el siguiente comando:

```bash
.read FILENAME.sql

