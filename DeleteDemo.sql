DECLARE
v_empno EMP.EMPNO%TYPE;

BEGIN
v_empno := &empno; -- 7788

DELETE FROM emp WHERE empno=v_empno;
COMMIT;

dbms_output.put_line('Record Deleted....');

END;
/