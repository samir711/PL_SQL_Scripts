DECLARE

TYPE num_array IS VARRAY(2) OF NUMBER(2);


x NUM_ARRAY;

BEGIN

   x := num_array(50,90,30);

   dbms_output.put_line(x(1));
   dbms_output.put_line('First index '|| x(1));

   FOR i IN x.first .. x.last
   LOOP
      dbms_output.put_line(x(i));
   END LOOP;
    
END;
/