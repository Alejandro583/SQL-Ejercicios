Este proyecto consiste en la creación de una base de datos SQLite para almacenar y limpiar datos sobre meteoritos, extraídos de un archivo CSV llamado meteorites.csv. El archivo import.sql contiene las instrucciones SQL necesarias para importar los datos y realizar las siguientes operaciones de limpieza:

Importación de datos: Los datos se importan a una tabla temporal, asegurando que las columnas relevantes estén bien definidas.
Manejo de valores nulos: Se reemplazan los valores vacíos en columnas como masa, año, latitud y longitud por NULL.
Redondeo de valores: Se redondean los valores decimales a dos decimales para mayor precisión.
Filtrado de datos: Se excluyen los meteoritos clasificados como “Relict” de la tabla final.
Ordenamiento: Los meteoritos se ordenan por año (de más antiguo a más nuevo) y, en caso de coincidencias, por nombre en orden alfabético.
Actualización de IDs: Se actualizan los IDs de los meteoritos, comenzando desde 1 para el meteorito más antiguo.
