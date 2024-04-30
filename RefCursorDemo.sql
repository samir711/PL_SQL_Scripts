DECLARE
c1 SYS_REFCURSOR;
r1 EMP%ROWTYPE;
r2 DEPT%ROWTYPE;

BEGIN
  OPEN c1 FOR SELECT * FROM emp;

  LOOP
     FETCH c1 INTO r1;
	 EXIT WHEN c1%NOTFOUND;
	 dbms_output.put_line(r1.ename ||' ' || r1.sal);
  END LOOP;
  CLOSE c1;

   OPEN c1 FOR SELECT * FROM dept;
   
   LOOP
     FETCH c1 INTO r2;
     EXIT WHEN c1%NOTFOUND;
	 dbms_output.put_line(r2.deptno ||' ' || r2.dname);
     END LOOP;
     CLOSE c1;
END;
/