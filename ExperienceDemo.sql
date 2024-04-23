DECLARE
v_empno EMP.EMPNO%TYPE;
v_hiredate DATE;
v_exp INT;


BEGIN

v_empno := &empno;

SELECT hiredate INTO v_hiredate FROM emp
WHERE empno = v_empno;

v_exp := (sysdate - v_hiredate) / 365;
dbms_output.put_line('Experience is ' || v_exp);
END;
/