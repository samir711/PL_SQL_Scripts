DECLARE
x NUMBER(4);
y NUMBER(4);
z NUMBER(4);

BEGIN
 x:= 10;
 y:= 20;
 z:= x + y;

 dbms_output.put_line('Sum of ' || x || ' and '|| y|| ' is ' || z);

END;
/