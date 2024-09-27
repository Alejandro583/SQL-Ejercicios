--## 7.sql
--DESE está preparando un informe sobre las escuelas en el distrito escolar de Cambridge. 
--En `7.sql`, escribe una consulta SQL para encontrar los nombres de las escuelas 
--(¡públicas o charter!) en el distrito escolar de Cambridge. Ten en cuenta que Cambridge,
--la ciudad, contiene algunos distritos escolares, pero DESE está interesada en el distrito cuyo nombre es “Cambridge”.

SELECT "schools"."name" FROM "schools"
JOIN "districts"
ON "schools"."district_id" = "districts"."id"
WHERE "districts"."name" = "Cambridge";
