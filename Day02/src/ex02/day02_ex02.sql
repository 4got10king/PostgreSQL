WITH person_visits_sorted AS (
    SELECT *
    FROM person_visits
    WHERE person_visits.visit_date BETWEEN '2022-01-01' AND '2022-01-03'
)
SELECT COALESCE(person.name, '-') AS person_name,
       pv.visit_date,
       COALESCE(pizzeria.name, '-') AS pizzeria_name
FROM person_visits_sorted pv
         FULL JOIN pizzeria ON pv.pizzeria_id = pizzeria.id
         FULL JOIN person ON person.id = pv.person_id
ORDER BY person_name, visit_date, pizzeria_name;
