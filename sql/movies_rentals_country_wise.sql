SELECT 
    co.country,
    COUNT(r.rental_id) AS total_rentals,
    COUNT(DISTINCT i.film_id) AS total_movies_on_rent
FROM 
    rental r
    JOIN inventory i ON r.inventory_id = i.inventory_id
    JOIN film f ON i.film_id = f.film_id
    JOIN customer c ON r.customer_id = c.customer_id
    JOIN address ad ON c.address_id = ad.address_id
    JOIN city ci ON ad.city_id = ci.city_id
	JOIN country co ON ci.country_id=co.country_id
GROUP BY 
    co.country
ORDER BY 
    co.country;