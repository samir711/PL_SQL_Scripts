CREATE OR REPLACE TRIGGER t3
BEFORE INSERT OR UPDATE OR DELETE
ON emp

BEGIN
   IF to_char(sysdate, 'DY') = 'THU' THEN
	   raise_application_error(-20050,'You cannot update on Sunday');
   END IF;

 --  dbms_output.put_line('row level trigger executed...');

END;
/