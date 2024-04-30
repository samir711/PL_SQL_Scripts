DECLARE
  CURSOR c1(n NUMBER) IS SELECT * FROM emp
  WHERE deptno=n;
  r EMP%ROWTYPE;



BEGIN
    OPEN c1(10);

	LOOP
	   FETCH c1 INTO r1;
	   EXIT WHEN c1%notfound;
	   dbms_output.put_line
    

END;
/