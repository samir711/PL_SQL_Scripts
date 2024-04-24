DECLARE
i INT :=1;

BEGIN

WHILE i <= &n

LOOP
   dbms_output.put_line(i);
   i := i + 1;
END LOOP;

END;
/