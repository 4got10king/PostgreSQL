WITH dmitriy_visits AS (
    SELECT pv.person_id, pv.pizzeria_id
    FROM person_visits pv
             JOIN person p ON pv.person_id = p.id
    WHERE p.name = 'Dmitriy' AND pv.visit_date = '2022-01-08'
)
SELECT p.name AS pizzeria_name
FROM pizzeria p
         JOIN dmitriy_visits dv ON p.id = dv.pizzeria_id
         JOIN menu m ON p.id = m.pizzeria_id
WHERE m.price <= 800;

