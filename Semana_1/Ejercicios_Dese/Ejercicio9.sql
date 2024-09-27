--## 9.sql
--Otro padre quiere enviar a su hijo a un distrito con pocos otros estudiantes.
--En `9.sql`, escribe una consulta SQL para encontrar el nombre (o los nombres) 
--del distrito escolar con el menor número de estudiantes. Informa solo el/los nombre(s).

SELECT "districts"."name" FROM "districts"
JOIN "expenditures"
ON "districts"."id" = "expenditures"."district_id"
WHERE "expenditures"."pupils" =
      (SELECT MIN("expenditures"."pupils")
       FROM  "expenditures");

