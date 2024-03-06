WITH male_orders AS (
	SELECT pizzeria_id 
	FROM menu
	JOIN person_order ON menu_id = menu.id
	WHERE person_id IN (
		SELECT id
		FROM person
		WHERE gender = 'female'
	)
	GROUP BY pizzeria_id
), female_orders AS (
	SELECT pizzeria_id 
	FROM menu
	JOIN person_order ON menu_id = menu.id
	WHERE person_id IN (
		SELECT id
		FROM person
		WHERE gender = 'male'
	)
	GROUP BY pizzeria_id
)
SELECT name AS pizzeria_name
FROM pizzeria
WHERE pizzeria.id = (
	SELECT pizzeria_id
	FROM male_orders
	WHERE pizzeria_id NOT IN (SELECT pizzeria_id FROM female_orders)
	UNION
	SELECT pizzeria_id
	FROM female_orders
	WHERE pizzeria_id NOT IN (SELECT pizzeria_id FROM male_orders)
)