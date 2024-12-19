SELECT 
    TABLE_NAME,
    TRIGGER_NAME,
    TRIGGER_TYPE,
    STATUS,
    DESCRIPTION
FROM 
    user_triggers
ORDER BY 
    TABLE_NAME, TRIGGER_NAME;