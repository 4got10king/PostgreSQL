-- Сессия 1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- Сессия 2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- Сессия 1
SHOW TRANSACTION ISOLATION LEVEL;
-- Сессия 2
SHOW TRANSACTION ISOLATION LEVEL;
-- Сессия 1
SELECT SUM(rating) FROM pizzeria;
-- Сессия 2
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
-- Сессия 2
COMMIT;
-- Сессия 1
SELECT SUM(rating) FROM pizzeria;
-- Сессия 1
COMMIT;
-- Сессия 1
SELECT SUM(rating) FROM pizzeria;
-- Сессия 2
SELECT SUM(rating) FROM pizzeria;