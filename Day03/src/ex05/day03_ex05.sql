SELECT name FROM pizzeria
WHERE id =
(
	SELECT *
	FROM
	(
		SELECT pizzeria_id
		FROM person_visits
		JOIN person ON person.id = person_id
		WHERE name = 'Andrey'
		GROUP BY pizzeria_id
	) AS visited
	EXCEPT
	SELECT *
	FROM
	(
		SELECT pizzeria_id FROM menu
		JOIN person_order ON menu_id = menu.id
		JOIN person ON person.id = person_id
		WHERE name = 'Andrey'
		GROUP BY pizzeria_id
	) AS ordered
)