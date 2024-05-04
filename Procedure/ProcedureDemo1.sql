-- addition(10,5)
CREATE OR REPLACE PROCEDURE
addition(x IN NUMBER, y IN NUMBER)
AS

 z NUMBER(4);
 BEGIN

   z:= x + y;
   dbms_output.put_line('z= ' || z);

 END;
 /