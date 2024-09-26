# Jugadores - Ejercicios de SQL


## Estructura de la Base de Datos

La base de datos `players.db` contiene una sola tabla llamada `players`, que tiene las siguientes columnas:

- **id**: Identificador único para cada jugador.
- **first_name**: Primer nombre del jugador.
- **last_name**: Apellido del jugador.
- **bats**: Lado en el que el jugador batea (R para derecho, L para izquierdo).
- **throws**: Mano con la que el jugador lanza (R para derecho, L para izquierdo).
- **weight**: Peso del jugador en libras.
- **height**: Altura del jugador en pulgadas.
- **debut**: Fecha en que el jugador debutó en la MLB (YYYY-MM-DD).
- **final_game**: Fecha del último juego del jugador en la MLB (YYYY-MM-DD).
- **birth_year**: Año de nacimiento del jugador.
- **birth_month**: Mes de nacimiento del jugador (número entero).
- **birth_day**: Día de nacimiento del jugador.
- **birth_city**: Ciudad natal del jugador.
- **birth_state**: Estado natal del jugador.
- **birth_country**: País natal del jugador.

## Ejercicios

1. **1.sql**: Encuentra la ciudad natal de Jackie Robinson (incluyendo ciudad, estado y país).
2. **2.sql**: Encuentra el lado en el que Babe Ruth bateó.
3. **3.sql**: Encuentra los identificadores de filas donde falta el valor en la columna de debut.
4. **4.sql**: Encuentra el nombre y apellidos de los jugadores no nacidos en los Estados Unidos, ordenando alfabéticamente por nombre y luego por apellido.
5. **5.sql**: Devuelve el nombre y apellido de todos los bateadores diestros, ordenados alfabéticamente.
6. **6.sql**: Devuelve nombre, apellido y fecha de debut de los jugadores nacidos en Pittsburgh, PA, ordenados por fecha de debut (de la más reciente a la más antigua) y alfabéticamente.
7. **7.sql**: Cuenta el número de jugadores que batean con la mano derecha y lanzan con la mano izquierda, o viceversa.
8. **8.sql**: Encuentra la altura y peso promedio (redondeados a dos decimales) de los jugadores que debutaron a partir del 1 de enero de 2000. Devuelve columnas con los nombres “Average Height” y “Average Weight”.
9. **9.sql**: Encuentra a los jugadores que jugaron su último juego en la MLB en 2022, ordenando alfabéticamente por nombre y luego por apellido.
10. **10.sql**: Escribe una consulta SQL para responder una pregunta de tu elección, utilizando `AS` para renombrar una columna, al menos una condición `WHERE` y ordenando por al menos una columna.

## Cómo Usar

Para probar los ejercicios, utiliza la base de datos proporcionada junto con los archivos de consulta `.sql`. Ejecuta las consultas usando:

```bash
.read FILENAME.sql

