WITH female_orders AS (
    SELECT p.name AS name, m.pizza_name
    FROM person p
    JOIN person_order po ON po.person_id = p.id
    JOIN menu m ON m.id = po.menu_id
    WHERE p.gender = 'female'
)
SELECT fo.name
FROM (
    SELECT name
    FROM female_orders
    WHERE pizza_name IN ('pepperoni pizza', 'cheese pizza')
    GROUP BY name
    HAVING COUNT(DISTINCT pizza_name) = 2
) AS fo
ORDER BY fo.name;
