--## 11.sql
--¿Existe una relación entre los gastos escolares y las tasas de graduación?
--En `11.sql`, escribe una consulta SQL para mostrar los nombres de las escuelas,
--su gasto por estudiante y su tasa de graduación. Ordena las escuelas de mayor a menor gasto por estudiante.
--Si dos escuelas tienen el mismo gasto por estudiante, ordénalas por nombre.
--Debes suponer que una escuela gasta la misma cantidad por estudiante que su distrito gasta en general.

SELECT "schools"."name","expenditures"."per_pupil_expenditure"
,"graduation_rates"."graduated"
FROM "schools"
JOIN "expenditures"
ON "expenditures"."district_id" = "schools"."district_id"
JOIN "graduation_rates"
ON "graduation_rates"."school_id" = "schools"."id"
ORDER BY "expenditures"."per_pupil_expenditure" DESC ,"schools"."name";

