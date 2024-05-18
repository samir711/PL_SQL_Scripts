CREATE OR REPLACE TRIGGER t10
AFTER DELETE
ON emp
FOR EACH ROW

DECLARE

BEGIN
       INSERT INTO emp_resign VALUES(:OLD.empno,:old.ename, :old.job, :old.sal, sysdate);

END;
/