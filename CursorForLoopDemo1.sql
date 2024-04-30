 

BEGIN
FOR r IN (SELECT * FROM emp)
LOOP
     dbms_output.put_line(r.ename || ' '|| r.sal);

END LOOP;

END;
/