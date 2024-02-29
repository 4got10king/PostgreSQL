SELECT
    m.pizza_name,
    p.name AS pizzeria_name
FROM
    person_order po
JOIN
    menu m ON po.menu_id = m.id
JOIN
    pizzeria p ON m.pizzeria_id = p.id
JOIN
    person pe ON po.person_id = pe.id
WHERE
    pe.name IN ('Denis', 'Anna')
ORDER BY
    m.pizza_name, p.name;
