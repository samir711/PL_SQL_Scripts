DECLARE
x NUMBER(4);
y NUMBER(4);
z NUMBER(4);
one_divide EXCEPTION;

BEGIN
 x:= &x;
 y:= &y;

 IF y = 1 THEN
    RAISE one_divide;
 END IF;
 

 z:= x /y;

 dbms_output.put_line('z=' || z);

 EXCEPTION
    WHEN zero_divide THEN
	 dbms_output.put_line('You cannot divide with 0');
	WHEN one_divide THEN
     dbms_output.put_line('Do not enter the value of y as 1');


END;
/