DECLARE
v_empno  EMP.EMPNO%TYPE;
v_job	 EMP.JOB%TYPE;
v_per	 FLOAT;

BEGIN

v_empno := &empno;

SELECT job INTO v_job FROM emp WHERE empno=v_empno;

IF v_job='MANAGER' THEN
	v_per :=20;
	--UPDATE emp SET sal = sal + sal * 20 /100
	--WHERE empno=v_empno;
ELSE
	v_per :=10;
	--UPDATE emp SET sal = sal + sal * 10 /100
	--WHERE empno=v_empno;
END IF;

 UPDATE emp SET sal = sal + sal * v_per /100
 WHERE empno=v_empno;

 COMMIT;

DBMS_OUTPUT.PUT_LINE('Job is ' ||v_job );

DBMS_OUTPUT.PUT_LINE(v_per ||'% salary increaed ');

END;

/