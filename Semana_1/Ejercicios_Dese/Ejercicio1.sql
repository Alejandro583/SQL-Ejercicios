--## 1.sql
-- Tu colega está preparando un mapa de todas las escuelas públicas en Massachusetts. En `1.sql`, 
-- escribe una consulta SQL para encontrar los nombres y las ciudades de todas las escuelas públicas en Massachusetts.
-- Ten en cuenta que no todas las escuelas en la tabla `schools` se consideran escuelas públicas tradicionales.
-- Massachusetts también reconoce las escuelas charter, que (según DESE) se consideran distintas.
SELECT "name", "city" FROM "schools"
WHERE "type" = 'Public School';
