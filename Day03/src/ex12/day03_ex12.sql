INSERT INTO person_order
SELECT *
FROM (
	SELECT * FROM generate_series((SELECT MAX(id) FROM person_order) + 1, (SELECT MAX(id) FROM person) + (SELECT MAX(id) FROM person_order), 1) AS order_id
	JOIN generate_series((SELECT MIN(id) FROM person), (SELECT MAX(id) FROM person), 1) AS person_id
	ON order_id.order_id = person_id.person_id + (SELECT MAX(id) FROM person_order)
	CROSS JOIN (SELECT (SELECT id FROM menu WHERE pizza_name = 'greek pizza') AS menu_id, '2022-02-25'::date AS order_date) AS pizza
) AS new_table;