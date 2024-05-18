CREATE OR REPLACE TRIGGER t5
BEFORE UPDATE OF empno
ON emp

BEGIN
  raise_application_error(-20050,'You cannot update empno');

END;
/