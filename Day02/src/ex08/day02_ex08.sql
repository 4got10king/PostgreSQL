WITH males AS (
    SELECT p.name, po.menu_id
    FROM person p
    JOIN person_order po ON po.person_id = p.id
    WHERE p.gender = 'male'
    AND p.address IN ('Samara', 'Moscow')
)
SELECT m.name
FROM males m
JOIN menu mnu ON mnu.id = m.menu_id
WHERE mnu.pizza_name IN ('pepperoni pizza', 'mushroom pizza')
ORDER BY m.name DESC;

