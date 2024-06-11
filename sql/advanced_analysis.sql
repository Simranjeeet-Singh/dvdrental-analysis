-- Customer lifetime value
SELECT c.first_name, c.last_name, SUM(p.amount) AS lifetime_value
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY lifetime_value DESC
LIMIT 10;

-- Rental duration analysis
SELECT f.title, AVG(r.return_date - r.rental_date) AS avg_rental_duration
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
WHERE r.return_date IS NOT NULL
GROUP BY f.title
ORDER BY avg_rental_duration DESC
LIMIT 10;