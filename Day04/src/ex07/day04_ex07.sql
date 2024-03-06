INSERT INTO 
person_visits(id, person_id, pizzeria_id, visit_date)
VALUES
(
(
SELECT id + 1 
FROM person_visits
ORDER BY id DESC LIMIT 1
),
(
SELECT id 
FROM person 
WHERE name = 'Dmitriy'
),
(
SELECT pz.id
FROM pizzeria pz
JOIN menu m 
ON pz.id = m.pizzeria_id
JOIN mv_dmitriy_visits_and_eats dima
ON dima.pizzeria_name != pz.name
WHERE m.price < 800
LIMIT 1
),
'2022-01-08'
);

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;
