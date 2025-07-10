-- rental_queries.sql
-- 41. List rentals not yet returned
SELECT * FROM rental WHERE return_date IS NULL;

-- 42. Count rentals by inventory_id
SELECT inventory_id, COUNT(*) FROM rental GROUP BY inventory_id;

-- 43. Find rentals from last week
SELECT * FROM rental WHERE rental_date > DATE_SUB(NOW(), INTERVAL 7 DAY);

-- 44. List rentals ordered by rental_date descending
SELECT * FROM rental ORDER BY rental_date DESC;

-- 45. Count rentals per customer
SELECT customer_id, COUNT(*) FROM rental GROUP BY customer_id;

-- 46. Get rentals with late returns (return_date > due_date)
SELECT * FROM rental WHERE return_date > rental_date + INTERVAL 3 DAY;

-- 47. Update rental return_date for rental_id=1
UPDATE rental SET return_date=NOW() WHERE rental_id=1;

-- 48. Delete rentals older than 10 years
DELETE FROM rental WHERE rental_date < DATE_SUB(NOW(), INTERVAL 10 YEAR);

-- 49. Get rental details joined with film title
SELECT r.rental_id, f.title, r.rental_date, r.return_date 
FROM rental r 
JOIN inventory i ON r.inventory_id = i.inventory_id 
JOIN film f ON i.film_id = f.film_id;

-- 50. Count rentals per store
SELECT store_id, COUNT(*) FROM rental GROUP BY store_id;
