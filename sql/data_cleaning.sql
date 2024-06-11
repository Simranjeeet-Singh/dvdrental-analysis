-- Data cleaning: Remove any duplicate rows in the payment table
DELETE FROM payment
WHERE payment_id NOT IN (
    SELECT MIN(payment_id)
    FROM payment
    GROUP BY customer_id, rental_id, amount, payment_date
)
RETURNING customer_id, rental_id, amount, payment_date;

-- Ensure that all customer email addresses are in lowercase
UPDATE customer
SET email = LOWER(email);