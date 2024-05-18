DECLARE

TYPE dept_array IS TABLE OF varchar2(10)
INDEX BY binary_integer;

d dept_array;


BEGIN

SELECT dname INTO d(1) FROM dept WHERE deptno=10;
SELECT dname INTO d(2) FROM dept WHERE deptno=20;
SELECT dname INTO d(3) FROM dept WHERE deptno=30;
SELECT dname INTO d(4) FROM dept WHERE deptno=40;

FOR i IN d.first .. d.last
LOOP

dbms_output.put_line(d(i));
END LOOP;


END;
/