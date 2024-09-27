--## 13.sql
--En `13.sql`, escribe una consulta SQL para responder una pregunta que tengas sobre los datos. La consulta debe:
--Incluir al menos un JOIN o una subconsulta.

SELECT "districts"."name","expenditures"."pupils" FROM "districts"
JOIN "expenditures"
ON "districts"."id" = "expenditures"."district_id"
WHERE "expenditures"."pupils" >=
    (SELECT AVG("expenditures"."pupils")
     FROM "expenditures")
ORDER BY "expenditures"."pupils" DESC,"districts"."name" ASC;
