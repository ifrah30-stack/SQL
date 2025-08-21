WITH high_value_customers AS (
    SELECT customer_id, SUM(order_total) as total_spent
    FROM orders
    WHERE order_date >= '2024-01-01'
    GROUP BY customer_id
    HAVING SUM(order_total) > 10000
)
SELECT c.customer_name, hvc.total_spent
FROM high_value_customers hvc
JOIN customers c ON hvc.customer_id = c.customer_id;
