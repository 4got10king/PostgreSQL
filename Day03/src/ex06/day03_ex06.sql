WITH full_menu AS
(
	SELECT pizzeria.id AS pizzeria_id, pizza_name, name AS pizzeria_name, price
    FROM pizzeria
	JOIN menu ON pizzeria_id = pizzeria.id
)
SELECT full_menu1.pizza_name, full_menu2.pizzeria_name AS pizzeria_name_1, full_menu1.pizzeria_name AS pizzeria_name_2, full_menu1.price
FROM full_menu AS full_menu1
CROSS JOIN full_menu AS full_menu2
WHERE full_menu1.pizza_name = full_menu2.pizza_name AND full_menu1.pizzeria_name <> full_menu2.pizzeria_name
		AND full_menu1.pizzeria_id < full_menu2.pizzeria_id AND full_menu1.price = full_menu2.price
ORDER BY pizza_name