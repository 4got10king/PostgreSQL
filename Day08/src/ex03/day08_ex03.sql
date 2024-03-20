-- Сессия 1
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- Сессия 2
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- Сессия 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Сессия 2
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
-- Сессия 2
COMMIT;
-- Сессия 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Сессия 1
COMMIT;
-- Сессия 1 
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Сессия 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';