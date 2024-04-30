DECLARE

v_empno EMP.EMPNO%TYPE;
v_amoUNT NUMBER;

BEGIN
 v_empno := &empno;
 v_amount := &amount;

 UPDATE emp SET sal=sal + v_amount
 WHERE empno=v_empno;

 IF sql%NOTFOUND THEN
   dbms_output.put_line('employee not found');
  
 ELSE
     COMMIT;
     dbms_output.put_line('Salary increased ');
END IF;


END;
/