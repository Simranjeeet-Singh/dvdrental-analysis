--Country wise movie wise revenue

SELECT country,cat.name AS category,f.title AS movie,SUM(p.amount) AS total_revenue
    FROM
        payment p
        JOIN rental r ON p.rental_id = r.rental_id
        JOIN inventory i ON r.inventory_id = i.inventory_id
        JOIN film f ON i.film_id = f.film_id
        JOIN film_category fc ON f.film_id = fc.film_id
        JOIN category cat ON fc.category_id = cat.category_id
        JOIN customer c ON p.customer_id = c.customer_id
        JOIN address ad ON c.address_id = ad.address_id
        JOIN city ci ON ad.city_id = ci.city_id
		JOIN country co ON ci.country_id=co.country_id
    GROUP BY
        co.country, cat.name, f.title
    ORDER BY
        co.country, cat.name, f.title;