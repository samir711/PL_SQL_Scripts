CREATE OR REPLACE TRIGGER t11 AFTER
    INSERT OR DELETE OR UPDATE ON emp
    FOR EACH ROW
DECLARE
    op STRING(10);
BEGIN
    IF inserting THEN
        op := 'INSERT';
    ELSIF updating THEN
        op := 'UPDATE';
    ELSIF deleting THEN
        op := 'DELETE';
    END IF;

    INSERT INTO emp_audit VALUES (
        user,
        systimestamp,
        op,
        :old.empno,
        :old.ename,
        :old.sal,
        :new.empno,
        :new.ename,
        :new.sal
    );

END;
/



-- trigger predicates:
-- inserting
-- updating
-- deleteing