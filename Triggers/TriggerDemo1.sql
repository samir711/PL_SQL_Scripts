CREATE OR REPLACE TRIGGER t1
AFTER INSERT OR UPDATE OR DELETE
ON emp

BEGIN
   dbms_output.put_line('stmt level trigger executed...');

END;
/