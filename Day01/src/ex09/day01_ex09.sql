SELECT name 
FROM pizzeria p
WHERE NOT EXISTS
    (SELECT 1 FROM person_visits pv WHERE pv.pizzeria_id = p.id);



SELECT name FROM pizzeria
WHERE id NOT IN
    (SELECT pizzeria_id FROM person_visits);