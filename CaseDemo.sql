DECLARE 
n INT;

BEGIN
 n := &n;

 CASE mod(n, 2)
 WHEN 0 THEN
   dbms_output.put_line('EVEN');
 WHEN 1 THEN
   dbms_output.put_line('ODD');
 
 END CASE;

END;
/