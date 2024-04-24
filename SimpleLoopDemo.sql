DECLARE
i INT;

BEGIN
 i := 1;

LOOP
   dbms_output.put_line(i);
   EXIT WHEN i = 4;
   i := i + 1;
END LOOP;

END;
/