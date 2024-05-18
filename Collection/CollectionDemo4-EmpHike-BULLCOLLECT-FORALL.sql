DECLARE

TYPE hike_array IS TABLE OF hike%ROWTYPE
INDEX BY binary_integer;

h hike_array;

BEGIN
   SELECT * BULK COLLECT INTO h FROM hike;

   FORALL i IN h.first .. h.last
     UPDATE employee SET sal=sal+sal*h(i).per/100 WHERE empno=h(i).empno;
   
   dbms_output.put_line('Salary increased to all employees....');
END;
/