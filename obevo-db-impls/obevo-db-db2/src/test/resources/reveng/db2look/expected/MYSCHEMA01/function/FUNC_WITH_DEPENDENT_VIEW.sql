CREATE OR REPLACE FUNCTION FUNC_WITH_DEPENDENT_VIEW ()

RETURNS integer language SQL NOT deterministic NO EXTERNAL ACTION READS SQL DATA

RETURN VALUES (1)
GO