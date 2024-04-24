DECLARE

BEGIN
 FOR i IN 1..4
 LOOP
  i:= 10;
  dbms_output.put_line(i);
 END LOOP;

END;
/