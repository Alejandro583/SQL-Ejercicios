--## 3.sql
--La Legislatura de Massachusetts desea saber cuánto dinero gastaron los distritos en promedio por estudiante el año pasado.
--En `3.sql`, escribe una consulta SQL para encontrar el gasto promedio por estudiante. Nombra la columna 
--“Average District Per-Pupil Expenditure” (Gasto Promedio por Estudiante en el Distrito).
--Ten en cuenta que la columna `per_pupil_expenditure` en la tabla `expenditures` 
--contiene la cantidad promedio que cada distrito gastó por estudiante el año pasado. 
--Te han pedido encontrar el promedio de este conjunto de promedios, ponderando todos los distritos por igual,
--independientemente de su tamaño.

SELECT AVG("per_pupil_expenditure") AS 'Average District Per-Pupil Expenditure'
FROM "expenditures";
