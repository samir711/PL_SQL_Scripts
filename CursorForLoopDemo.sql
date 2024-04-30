DECLARE
 CURSOR	c1 IS SELECT * FROM emp;

BEGIN
FOR r IN c1
LOOP
     dbms_output.put_line(r.ename || ' '|| r.sal);

END LOOP;

END;
/