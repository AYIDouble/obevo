CREATE PROCEDURE SP4 ()
LANGUAGE SQL  DYNAMIC RESULT SETS 1 
BEGIN ATOMIC
    DECLARE OPC CURSOR WITH RETURN FOR 
        SELECT * FROM TABLE_A WHERE A_ID = 4;
    OPEN OPC; 
END
GO
