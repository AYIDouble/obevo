CREATE PROCEDURE SP1 ()
LANGUAGE SQL  DYNAMIC RESULT SETS 1 
BEGIN ATOMIC
    DECLARE OPC CURSOR WITH RETURN FOR 
        SELECT * FROM TABLE_A;
    OPEN OPC; 
END
GO
