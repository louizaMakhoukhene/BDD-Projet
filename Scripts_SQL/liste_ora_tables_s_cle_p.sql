SELECT 
    TABLE_NAME
FROM 
    user_tables
WHERE 
    TABLE_NAME NOT IN (
        SELECT TABLE_NAME 
        FROM user_constraints 
        WHERE CONSTRAINT_TYPE = 'P'
    )
ORDER BY 
    TABLE_NAME;
