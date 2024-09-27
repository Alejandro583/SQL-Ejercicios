--## 12.sql
--Un padre te pide consejo sobre cómo encontrar los mejores distritos escolares públicos en Massachusetts.
--En `12.sql`, escribe una consulta SQL para encontrar los distritos escolares públicos con un gasto por estudiante
--superior al promedio y un porcentaje de maestros calificados como "ejemplares" superior al promedio.
--Tu consulta debe devolver los nombres de los distritos, junto con sus gastos por estudiante
--y el porcentaje de maestros calificados como ejemplares. Ordena los resultados primero por el porcentaje de maestros
--calificados como ejemplares (de mayor a menor), luego por el gasto por estudiante (de mayor a menor).

SELECT districts.name,
       expenditures.per_pupil_expenditure AS Expenditure,
       staff_evaluations.exemplary AS Exemplary
FROM districts
JOIN expenditures ON districts.id = expenditures.district_id
JOIN staff_evaluations ON districts.id = staff_evaluations.district_id
JOIN schools ON schools.district_id = districts.id
WHERE districts.type LIKE 'Public%' AND districts.state = 'MA'
GROUP BY districts.id, districts.name
HAVING AVG(expenditures.per_pupil_expenditure) > (
           SELECT AVG(per_pupil_expenditure)
           FROM expenditures
       )
   AND AVG(staff_evaluations.exemplary) > (
           SELECT AVG(exemplary)
           FROM staff_evaluations
       )

ORDER BY Exemplary DESC ,Expenditure DESC;
