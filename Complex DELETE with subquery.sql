DELETE FROM user_sessions
WHERE user_id IN (
    SELECT user_id 
    FROM users 
    WHERE last_login_date < '2023-01-01'
    AND active = false
);
