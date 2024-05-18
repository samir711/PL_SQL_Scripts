DECLARE
TYPE emp_array IS TABLE OF emp%ROWTYPE;
 
e emp_array;

BEGIN
  SELECT * BULK COLLECT  INTO e FROM emp;

   FOR I IN e.first .. e.last
   LOOP
    dbms_output.put_line(e(i).ename || ' ' || e(i).sal);
   END LOOP;
END;
/