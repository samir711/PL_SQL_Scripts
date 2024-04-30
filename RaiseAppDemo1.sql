DECLARE
 x NUMBER(4);
 y NUMBER(5);
 z NUMBER(4);

 BEGIN
   x:= &x;
   y:= &y;

   IF y = 1 THEN
    Raise_Application_Error(-20070,'Demonitor cannot be 1');
   END IF;

   dbms_output.put_line('z= '||z);


END;
/