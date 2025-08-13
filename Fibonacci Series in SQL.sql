WITH RECURSIVE fib(n, a, b) AS (
    SELECT 1, 0, 1
    UNION ALL
    SELECT n+1, b, a+b
    FROM fib
    WHERE n < 10
)
SELECT n, a AS FibonacciNumber FROM fib;
