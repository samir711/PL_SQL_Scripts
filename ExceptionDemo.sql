DECLARE

  x NUMBER(4);
  y NUMBER(4);
  z NUMBER(4);

BEGIN
    x:= &x;
	y:= &y;
	z:= x / y;

	dbms_output.put_line('z =' || z);
	
	EXCEPTION 
         WHEN zero_divide THEN
		 dbms_output.put_line('Cannot divide with zero');
		 WHEN value_error THEN
         dbms_output.put_line('Wrong input or size is exceeded');
		 WHEN others THEN
		 dbms_output.put_line('Something went wrong....');

END;
/