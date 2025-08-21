SELECT order_id, order_total,
       CASE 
           WHEN order_total > 1000 THEN 'Premium'
           WHEN order_total > 500 THEN 'Standard'
           ELSE 'Basic'
       END as order_tier,
       CASE 
           WHEN payment_method = 'Credit Card' THEN order_total * 0.97
           WHEN payment_method = 'PayPal' THEN order_total * 0.98
           ELSE order_total
       END as net_amount
FROM orders;
