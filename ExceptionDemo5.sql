DECLARE
CURSOR c1 IS SELECT * FROM emp;
r EMP%ROWTYPE;


BEGIN
 OPEN c1;
 
 LOOP
     FETCH c1 INTO r;
	 EXIT WHEN c1%notfound;
	 dbms_output.put_line(r.ename || r.sal);

 END LOOP;

 CLOSE c1;


END;
/