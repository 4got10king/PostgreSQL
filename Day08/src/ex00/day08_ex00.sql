-- Сессия 1
BEGIN;
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Сессия 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- Сессия 1
COMMIT;
-- Сессия 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';