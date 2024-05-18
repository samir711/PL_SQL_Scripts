CREATE OR REPLACE TRIGGER t2
AFTER INSERT OR UPDATE OR DELETE
ON emp
FOR EACH ROW

BEGIN
   dbms_output.put_line('row level trigger executed...');

END;
/