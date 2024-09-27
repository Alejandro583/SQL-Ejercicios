# Base de datos dese.db


## Tabla districts
La tabla `districts` contiene las siguientes columnas:

- **id**: el ID del distrito.
- **name**: el nombre del distrito.
- **type**: indica el tipo de distrito. En Massachusetts, hay distritos escolares públicos (denotados como "Public School District") y distritos charter (denotados como "Charter District"). No es necesario aprender la diferencia, aunque puedes hacerlo en Wikipedia si tienes curiosidad.
- **city**: la ciudad en la que se encuentra el distrito.
- **state**: el estado en el que se encuentra el distrito.
- **zip**: el código postal en el que se encuentra el distrito.

## Tabla schools
La tabla `schools` contiene las siguientes columnas:

- **id**: el ID de la escuela.
- **district_id**: el ID del distrito al que pertenece la escuela.
- **name**: el nombre de la escuela.
- **type**: indica el tipo de escuela. En Massachusetts, hay escuelas públicas (denotadas como "Public School") y escuelas charter (denotadas como "Charter School"). No es necesario aprender la diferencia, aunque puedes hacerlo en Wikipedia si tienes curiosidad.
- **city**: la ciudad en la que se encuentra la escuela.
- **state**: el estado en el que se encuentra la escuela.
- **zip**: el código postal en el que se encuentra la escuela.

## Tabla graduation_rates
La tabla `graduation_rates` contiene las siguientes columnas:

- **id**: el ID de la tasa de graduación.
- **school_id**: el ID de la escuela con la cual se asocia la graduación.
- **graduated**: el porcentaje de estudiantes, de 0 a 100, que se graduaron a tiempo.
- **dropped**: el porcentaje de estudiantes, de 0 a 100, que abandonaron la escuela antes de graduarse.
- **excluded**: el porcentaje de estudiantes, de 0 a 100, que fueron "excluidos" (es decir, expulsados).

## Tabla expenditures
La tabla `expenditures` contiene las siguientes columnas:

- **id**: el ID del gasto.
- **district_id**: el ID del distrito con el cual se asocia el gasto.
- **pupils**: el número de alumnos que asisten al distrito.
- **per_pupil_expenditure**: la cantidad de dinero, en dólares, gastada en cada estudiante que asiste al distrito.

## Tabla staff_evaluations
La tabla `staff_evaluations` contiene las siguientes columnas:

- **id**: el ID del informe de evaluación.
- **district_id**: el ID del distrito con el cual se asocia la evaluación.
- **evaluated**: el porcentaje de personal del distrito, de 0 a 100, evaluado formalmente.
- **exemplary**: el porcentaje de personal del distrito, de 0 a 100, evaluado como "ejemplar".
- **proficient**: el porcentaje de personal del distrito, de 0 a 100, evaluado como "competente".
- **needs_improvement**: el porcentaje de personal del distrito, de 0 a 100, evaluado como "necesita mejora".
- **unsatisfactory**: el porcentaje de personal del distrito, de 0 a 100, evaluado como "insatisfactorio".


