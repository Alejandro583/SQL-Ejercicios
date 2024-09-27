--## 10.sql
--En Massachusetts, los gastos de los distritos escolares se determinan en parte por los impuestos
--locales sobre el valor de las propiedades (por ejemplo, casas). En `10.sql`, 
--escribe una consulta SQL para encontrar los 10 distritos escolares públicos con el mayor gasto por estudiante.
--Tu consulta debe devolver los nombres de los distritos y el gasto por estudiante en cada uno.


SELECT "districts"."name","expenditures"."per_pupil_expenditure"
FROM "districts"
JOIN "expenditures"
ON "districts"."id" = "expenditures"."district_id"
WHERE "type" LIKE 'Public%'
ORDER BY "per_pupil_expenditure" DESC LIMIT 10;

