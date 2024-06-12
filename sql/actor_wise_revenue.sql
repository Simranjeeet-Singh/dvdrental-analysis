SELECT 
    co.country,
    a.first_name || ' ' || a.last_name AS actor,
    SUM(p.amount) AS total_revenue
FROM 
    payment p
    JOIN rental r ON p.rental_id = r.rental_id
    JOIN inventory i ON r.inventory_id = i.inventory_id
    JOIN film f ON i.film_id = f.film_id
    JOIN film_actor fa ON f.film_id = fa.film_id
    JOIN actor a ON fa.actor_id = a.actor_id
    JOIN customer c ON p.customer_id = c.customer_id
    JOIN address ad ON c.address_id = ad.address_id
    JOIN city ci ON ad.city_id = ci.city_id
	JOIN country co ON ci.country_id=co.country_id
GROUP BY 
    co.country, a.first_name, a.last_name
ORDER BY 
    co.country, total_revenue DESC;