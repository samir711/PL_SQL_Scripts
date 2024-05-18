DECLARE

TYPE hike_array IS TABLE OF hike%ROWTYPE
INDEX BY binary_integer;

h hike_array;

BEGIN
   SELECT * BULK COLLECT INTO h FROM hike;

   FOR i IN h.first .. h.last
   LOOP
     UPDATE employee SET sal=sal+sal*h(i).per/100 WHERE empno=h(i).empno;
   END LOOP;
   dbms_output.put_line('Salary increased to all employees....');
END;
/