CREATE OR REPLACE TRIGGER t12
BEFORE UPDATE
ON emp
FOR EACH ROW
BEGIN
  IF :new.sal < :old.sal THEN
     raise_application_error(-20080,'You cannot decrease the salary');
  END IF;

END;
/