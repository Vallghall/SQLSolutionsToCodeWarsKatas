SELECT
c.customer_id,
c.email,
COUNT(p.payment_date) AS payments_count,
SUM(p.amount)::float AS total_amount
FROM customer c
JOIN payment p
ON c.customer_id=p.customer_id
GROUP BY c.customer_id
ORDER BY SUM(p.amount) DESC
LIMIT 10;