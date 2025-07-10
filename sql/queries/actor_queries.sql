-- Sample actor queries here
-- Sample queries on actor table

-- 1. Select first 10 actors
SELECT actor_id, first_name, last_name FROM actor LIMIT 10;

-- 2. Find actors with first name starting with 'J'
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name LIKE 'J%';

-- 3. Count actors by first letter of last name
SELECT LEFT(last_name, 1) AS initial, COUNT(*) AS count
FROM actor
GROUP BY initial
ORDER BY initial;
