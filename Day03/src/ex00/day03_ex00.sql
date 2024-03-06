SELECT DISTINCT pizza_name, price, name AS pizzeria_name, visit_date
FROM pizzeria
JOIN menu ON menu.pizzeria_id = pizzeria.id
JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
WHERE person_id = (SELECT id from person WHERE name = 'Kate') AND price BETWEEN 800 AND 1000
ORDER BY pizza_name, price, pizzeria_name;