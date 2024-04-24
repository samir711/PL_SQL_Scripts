DECLARE
n INT;

BEGIN
n := &n;

CASE
 WHEN n > 0 THEN
   dbms_output.put_line('+ve');
 WHEN n < 0 THEN
   dbms_output.put_line('-ve');
 ELSE 
    dbms_output.put_line('ZERO');
END CASE;

END;
/