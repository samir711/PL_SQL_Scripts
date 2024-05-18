DECLARE

TYPE dept_array IS TABLE OF varchar2(10)
INDEX BY binary_integer;

d dept_array;


BEGIN

SELECT dname BULK COLLECT INTO d FROM dept;
 

FOR i IN d.first .. d.last
LOOP

dbms_output.put_line(d(i));
END LOOP;


END;
/