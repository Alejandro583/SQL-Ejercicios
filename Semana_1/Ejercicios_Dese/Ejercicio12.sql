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
