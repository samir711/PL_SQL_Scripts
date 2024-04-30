DECLARE
CURSOR c1 IS SELECT *  FROM emp;
r EMP%ROWTYPE;

BEGIN
  OPEN c1;
  FETCH c1 INTO r;

  WHILE c1%FOUND   
 
  LOOP 
	 dbms_output.put_line(r.ename || ' ' || r.sal);
	 FETCH c1 INTO r;
  END LOOP;

  CLOSE c1;

END;
/