SELECT 
    FLOOR(RAND()*100) AS RandomNumber,
    CONCAT('User', FLOOR(RAND()*1000)) AS RandomName
FROM information_schema.tables
LIMIT 10;
