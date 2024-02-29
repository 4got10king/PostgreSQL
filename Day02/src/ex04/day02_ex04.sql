SELECT
    m.pizza_name,
    p.name AS pizzeria_name,
    m.price
FROM
    menu m
JOIN
    pizzeria p ON m.pizzeria_id = p.id
WHERE
    m.pizza_name IN ('mushroom pizza', 'pepperoni pizza')
ORDER BY
    m.pizza_name,
    p.name;


