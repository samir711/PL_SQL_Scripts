DECLARE
v_empno		EMP.EMPNO%TYPE;
v_job		EMP.JOB%TYPE;
v_per		FLOAT;

BEGIN

 v_empno := &empno;
 
 SELECT job INTO v_job FROM emp WHERE empno=v_empno;

 IF v_job='MANAGER' THEN
    v_per:= 20;
 
 ELSIF v_job='CLERK' THEN
     v_per := 15;

 ELSE
     v_per:= 10;

 END IF;

 UPDATE emp SET sal=sal+sal * v_per / 100;
 WHERE empno = v_empno;

  DBMS_OUTPUT.PUT_LINE('Job is ' ||v_job );

  DBMS_OUTPUT.PUT_LINE(v_per ||'% salary increased. ');

END;
/