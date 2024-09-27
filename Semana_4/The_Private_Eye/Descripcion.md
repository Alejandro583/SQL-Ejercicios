## Explicación del Cifrado de Libro

Dada la proximidad del papel a *Las Aventuras de Sherlock Holmes*, lo que está escrito en él parece ser alguna variación de un cifrado de libro. En una versión de un cifrado de libro, el codificador proporciona una lista de “tripletas” (es decir, un conjunto de tres números). Cada tripleta está estructurada de la siguiente manera:

- El primer número en la tripleta es el número de la oración referenciada por el codificador.
- El segundo número en la tripleta es el número de carácter, dentro de esa oración, en el que comienza el mensaje.
- El tercer número en la tripleta es la longitud del mensaje en caracteres (es decir, cuántos caracteres leer a partir del primero, incluyendo espacios y puntuación).

### Ejemplo

Considera la tripleta `2, 1, 8` en relación con las siguientes oraciones:

*¡Así es! No has observado. Y sin embargo, has visto.*

- `2` se refiere a la 2ª oración, “No has observado.”
- `1` se refiere al 1er carácter en esa oración, “N.”
- `8` se refiere a la longitud del mensaje a partir de ese primer carácter.

Comenzando desde el 1er carácter de la 2ª oración, leer 8 caracteres (¡incluyendo espacios!) te da:

*No has ob*

Ahora puedes imaginarte unir múltiples tuplas para codificar un mensaje más largo. ¡Quizás eso es exactamente lo que ha hecho el detective!

### Esquema

Dentro de `private.db`, encontrarás una tabla llamada `sentences`. La tabla `sentences` contiene todas las oraciones en *Las Aventuras de Sherlock Holmes*. En particular, contiene las siguientes columnas:

- `id`, que es el ID de la oración
- `sentence`, que es la oración misma

