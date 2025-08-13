SELECT 
    CASE 
        WHEN COUNT(DISTINCT value) = 9 THEN 'Valid'
        ELSE 'Invalid'
    END AS RowCheck
FROM Sudoku
WHERE row_id = 1;
