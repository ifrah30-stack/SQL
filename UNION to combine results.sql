SELECT 'Active' as status, COUNT(*) as count FROM users WHERE active = true
UNION ALL
SELECT 'Inactive' as status, COUNT(*) as count FROM users WHERE active = false
UNION ALL
SELECT 'Total' as status, COUNT(*) as count FROM users;
