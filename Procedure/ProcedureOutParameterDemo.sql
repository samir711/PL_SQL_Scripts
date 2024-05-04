-- addition(10,5, a)
CREATE OR REPLACE PROCEDURE
addition(x IN NUMBER, y IN NUMBER, z OUT NUMBER)
AS

-- z NUMBER(4);
 BEGIN

   z:= x + y;
  -- dbms_output.put_line('z= ' || z);

 END;
 /