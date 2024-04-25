DECLARE
i INT;

BEGIN
 i:= 1;

 <<abc>>
   dbms_output.put_line(i);
    i := i + 1;
  IF i <= 4 THEN
    GOTO abc;
  END IF;
END;
/