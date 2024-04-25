DECLARE


BEGIN
FOR i IN 1 .. 10
LOOP
  IF i = 7 THEN
    CONTINUE;
  END IF;

  dbms_output.put_line(i);

 END LOOP;

END;
/