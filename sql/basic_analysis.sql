-- Total number of rentals
SELECT COUNT(*) AS total_rentals FROM rental;

-- Top 10 rented films
SELECT f.title, COUNT(r.rental_id) AS rental_count
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.title
ORDER BY rental_count DESC
LIMIT 10;

-- Top 5 customers by rental count
SELECT c.first_name, c.last_name, COUNT(r.rental_id) AS rental_count
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY rental_count DESC
LIMIT 5;

-- Monthly rental revenue
SELECT EXTRACT(month FROM payment_date) AS month, SUM(amount) AS total_revenue
FROM payment
GROUP BY month
ORDER BY month;