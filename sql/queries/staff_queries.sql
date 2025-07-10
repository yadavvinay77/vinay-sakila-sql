-- staff_queries.sql
-- 21. List all staff members with their email and store
SELECT staff_id, first_name, last_name, email, store_id FROM staff;

-- 22. Count staff per store
SELECT store_id, COUNT(*) AS staff_count FROM staff GROUP BY store_id;

-- 23. Find staff by last name 'Smith'
SELECT * FROM staff WHERE last_name = 'Smith';

-- 24. List staff who have been active since 2005
SELECT * FROM staff WHERE active = 1;

-- 25. Get staff usernames
SELECT username FROM staff;
