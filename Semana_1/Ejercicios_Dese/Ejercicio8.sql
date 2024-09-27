--## 8.sql
--Un padre quiere enviar a su hijo a un distrito con muchos otros estudiantes. 
--En `8.sql`, escribe una consulta SQL para mostrar los nombres de todos los 
--distritos escolares y el número de estudiantes matriculados en cada uno.

SELECT "districts"."name","expenditures"."pupils" FROM "districts"
JOIN "expenditures"
ON "districts"."id" = "expenditures"."district_id";

