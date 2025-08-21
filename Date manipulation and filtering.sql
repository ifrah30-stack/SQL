SELECT user_id, registration_date,
       DATE_ADD(registration_date, INTERVAL 30 DAY) as trial_end_date,
       DATEDIFF(CURRENT_DATE, registration_date) as days_since_registration
FROM users
WHERE registration_date BETWEEN '2024-01-01' AND '2024-03-31';
