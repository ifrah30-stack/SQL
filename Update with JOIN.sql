UPDATE orders o
JOIN customers c ON o.customer_id = c.customer_id
SET o.discount = o.order_total * 0.10
WHERE c.membership_level = 'Gold' 
AND o.order_date >= '2024-01-01';
