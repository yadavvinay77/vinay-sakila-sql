-- payment_queries.sql
-- 31. List last 10 payments
SELECT * FROM payment ORDER BY payment_date DESC LIMIT 10;

-- 32. Calculate total payments received
SELECT SUM(amount) AS total_payments FROM payment;

-- 33. Average payment amount
SELECT AVG(amount) AS avg_payment FROM payment;

-- 34. Count payments per customer
SELECT customer_id, COUNT(*) AS payment_count FROM payment GROUP BY customer_id;

-- 35. Find payments above $10
SELECT * FROM payment WHERE amount > 10;

-- 36. List payments made in last 30 days
SELECT * FROM payment WHERE payment_date > DATE_SUB(NOW(), INTERVAL 30 DAY);

-- 37. Sum payments grouped by staff member
SELECT staff_id, SUM(amount) AS total_collected FROM payment GROUP BY staff_id;

-- 38. Find customers who paid more than $50 total
SELECT customer_id, SUM(amount) AS total_paid FROM payment GROUP BY customer_id HAVING total_paid > 50;

-- 39. Get payment details along with customer name
SELECT p.payment_id, p.amount, c.first_name, c.last_name 
FROM payment p 
JOIN customer c ON p.customer_id = c.customer_id;

-- 40. Delete payments older than 5 years
DELETE FROM payment WHERE payment_date < DATE_SUB(NOW(), INTERVAL 5 YEAR);
