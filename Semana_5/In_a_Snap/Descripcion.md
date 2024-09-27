# Esquema de la Base de Datos en snap.db

Dentro de **snap.db**, encontrarás tres tablas que implementan las relaciones descritas en el diagrama ER anterior. Haz clic en los desplegables a continuación para aprender más sobre el esquema de cada tabla individual.

## Tabla de usuarios
La tabla **users** contiene las siguientes columnas:

- **id**: el ID del usuario.
- **username**: el nombre de usuario del usuario.
- **phone_number**: el número de teléfono del usuario.
- **joined_date**: la fecha en que el usuario se unió a la aplicación.
- **last_login_date**: la fecha en que el usuario inició sesión por última vez.

## Tabla de amigos
La tabla **friends** contiene las siguientes columnas:

- **user_id**: el ID de un usuario dado.
- **friend_id**: el ID del usuario con el que el usuario dado es amigo.
- **friendship_date**: la fecha en que comenzó la amistad.

Para cada fila, el usuario en la columna **user_id** cuenta al usuario en la columna **friend_id** entre sus amigos, pero no necesariamente viceversa. Cuando dos usuarios se cuentan mutuamente como amigos, se insertan dos filas:

| user_id | friend_id | friendship_date |
|---------|-----------|------------------|
| 1       | 2         | 2024-01-01       |
| 2       | 1         | 2024-01-01       |

## Tabla de mensajes
La tabla **messages** contiene las siguientes columnas:

- **id**: el ID del mensaje.
- **from_user_id**: el ID del usuario que envió el mensaje.
- **to_user_id**: el ID del usuario al que se envió el mensaje.
- **picture**: el nombre del archivo de la imagen que se envió en el mensaje.
- **sent_timestamp**: la marca de tiempo en la que se envió el mensaje.
- **viewed_timestamp**: la marca de tiempo en la que se vio el mensaje.
- **expires_timestamp**: la marca de tiempo en la que el mensaje expira.

