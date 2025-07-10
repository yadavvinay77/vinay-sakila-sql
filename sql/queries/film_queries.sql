-- film_queries.sql
-- 6. List all films released in 2006
SELECT * FROM film WHERE release_year = 2006;

-- 7. Count films by rating
SELECT rating, COUNT(*) AS count FROM film GROUP BY rating;

-- 8. List films with rental rate greater than 4.99
SELECT * FROM film WHERE rental_rate > 4.99;

-- 9. List films ordered by length descending
SELECT * FROM film ORDER BY length DESC;

-- 10. List films with the word 'Action' in the title
SELECT * FROM film WHERE title LIKE '%Action%';
