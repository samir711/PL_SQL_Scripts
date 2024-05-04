DECLARE
  a NUMBER(4);
  b NUMBER(4);
  c NUMBER(4);

BEGIN
a:= &a;
b:= &b;

addition(a, b, c);
dbms_output.put_line('Sum : ' || c);

END;
/