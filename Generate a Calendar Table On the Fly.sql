WITH RECURSIVE calendar AS (
    SELECT DATE('2025-01-01') AS day
    UNION ALL
    SELECT day + INTERVAL 1 DAY
    FROM calendar
    WHERE day < '2025-01-31'
)
SELECT * FROM calendar;
