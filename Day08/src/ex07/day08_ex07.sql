-- Сессия 1
BEGIN TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
-- Сессия 2
BEGIN TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
-- Сессия 1
SHOW TRANSACTION ISOLATION LEVEL;
-- Сессия 2
SHOW TRANSACTION ISOLATION LEVEL;
-- Сессия 1
UPDATE pizzeria SET rating = 1 WHERE id = 1;
-- Сессия 2
UPDATE pizzeria SET rating = 2 WHERE id = 2;
-- Сессия 1
UPDATE pizzeria SET rating = 1 WHERE id = 2;
-- Сессия 2
UPDATE pizzeria SET rating = 2 WHERE id = 1;
-- Сессия 1
COMMIT;
-- Сессия 2
COMMIT;
-- Сессия 1
SELECT * FROM pizzeria;
-- Сессия 2
SELECT * FROM pizzeria;