# Tablas de Jugadores y Equipos

## Tabla de jugadores
La tabla `players` contiene las siguientes columnas:

- `id`: el ID del jugador
- `first_name`: el primer nombre del jugador
- `last_name`: el apellido del jugador
- `bats`: el lado ("R" para derecho o "L" para izquierdo) en el que el jugador batea
- `throws`: la mano ("R" para derecho o "L" para izquierdo) con la que el jugador lanza
- `weight`: el peso del jugador en libras
- `height`: la altura del jugador en pulgadas
- `debut`: la fecha (expresada como YYYY-MM-DD) en la que el jugador comenzó su carrera en la MLB
- `final_game`: la fecha (expresada como YYYY-MM-DD) en la que el jugador jugó su último partido en la MLB
- `birth_year`: el año en que nació el jugador
- `birth_month`: el mes (expresado como un número entero) en que nació el jugador
- `birth_day`: el día en que nació el jugador
- `birth_city`: la ciudad en la que nació el jugador
- `birth_state`: el estado en el que nació el jugador
- `birth_country`: el país en el que nació el jugador

## Tabla de equipos
La tabla `teams` contiene las siguientes columnas:

- `id`: el ID de cada equipo
- `year`: el año en que se fundó el equipo
- `name`: el nombre del equipo
- `park`: el nombre del parque en el que el equipo juega (o jugó)

## Tabla de actuaciones
La tabla `performances` contiene las siguientes columnas:

- `id`: el ID de la actuación
- `player_id`: el ID del jugador que realizó la actuación
- `team_id`: el ID del equipo para el que el jugador realizó la actuación
- `year`: el año en que el jugador realizó la actuación
- `G`: el número de partidos jugados por el jugador para el equipo dado en el año dado
- `AB`: el número de "turnos al bate" (veces que el jugador fue a batear) del jugador para el equipo dado en el año dado
- `H`: el número de hits del jugador para el equipo dado en el año dado
- `2B`: el número de dobles (hits de dos bases) del jugador para el equipo dado en el año dado
- `3B`: el número de triples (hits de tres bases) del jugador para el equipo dado en el año dado
- `HR`: el número de home runs del jugador para el equipo dado en el año dado
- `RBI`: el número de "carreras impulsadas" (i.e., carreras anotadas) del jugador para el equipo dado en el año dado
- `SB`: el número de bases robadas por el jugador para el equipo dado en el año dado

## Tabla de salarios
La tabla `salaries` contiene las siguientes columnas:

- `id`: el ID del salario
- `player_id`: el ID del jugador que gana el salario
- `team_id`: el ID del equipo que paga el salario
- `year`: el año en que se pagó el salario
- `salary`: el salario en dólares estadounidenses (sin ajustar por inflación)

