SELECT product_name, category, price,
       RANK() OVER (PARTITION BY category ORDER BY price DESC) as price_rank,
       DENSE_RANK() OVER (PARTITION BY category ORDER BY price DESC) as dense_price_rank
FROM products;
