INSERT INTO person_visits
VALUES ((SELECT MAX(id) from person_visits) + 1, 
	    (SELECT id FROM person WHERE name = 'Denis') ,
	    (Select id FROM pizzeria WHERE name = 'Dominos'),
		'2022-02-24'
);

INSERT INTO person_visits
VALUES ((SELECT MAX(id) from person_visits) + 1, 
	    (SELECT id FROM person WHERE name = 'Irina') ,
	    (Select id FROM pizzeria WHERE name = 'Dominos'),
		'2022-02-24'
);