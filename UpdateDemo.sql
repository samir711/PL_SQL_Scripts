DECLARE
v_empno EMP.EMPNO%TYPE;
v_amount FLOAT;

BEGIN
v_empno := &empno;
v_amount := &amount;

UPDATE emp SET sal=sal+v_amount
WHERE empno=v_empno;
COMMIT;
dbms_output.put_line('Salary increased....');

END;
/