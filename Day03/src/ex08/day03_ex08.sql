INSERT INTO menu
VALUES (
    (SELECT MAX(id) FROM menu) + 1, 
    (SELECT id FROM pizzeria WHERE pizzeria.name = 'Dominos') ,
    'sicilian pizza', 
    900
);