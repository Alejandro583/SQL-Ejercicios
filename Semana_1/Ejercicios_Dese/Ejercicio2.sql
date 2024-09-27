--## 2.sql
--Tu equipo está trabajando en archivar datos antiguos. En `2.sql`, escribe una consulta SQL para encontrar 
--los nombres de los distritos que ya no están operativos.
--Los distritos que ya no están operativos tienen “(non-op)” al final de su nombre.

SELECT "name" FROM "districts"
WHERE "name" LIKE '%non-op%';
