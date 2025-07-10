-- actor_queries.sql
-- 1. List all actors ordered by last name
SELECT * FROM actor ORDER BY last_name;

-- 2. Count total actors
SELECT COUNT(*) FROM actor;

-- 3. Find actor by first name 'Penelope'
SELECT * FROM actor WHERE first_name = 'PENELOPE';

-- 4. List actors who have appeared in more than 10 films
SELECT a.actor_id, a.first_name, a.last_name, COUNT(fa.film_id) AS film_count
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id
HAVING film_count > 10;

-- 5. List actors with last name starting with 'S'
SELECT * FROM actor WHERE last_name LIKE 'S%';
