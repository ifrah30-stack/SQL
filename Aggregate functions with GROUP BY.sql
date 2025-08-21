SELECT category, 
       COUNT(*) as product_count,
       AVG(price) as avg_price,
       MAX(price) as max_price
FROM products
GROUP BY category
HAVING AVG(price) > 50;
