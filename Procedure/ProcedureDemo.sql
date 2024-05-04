CREATE OR REPLACE PROCEDURE
addition( x NUMBER, y NUMBER)
AS
  z NUMBER(4);

BEGIN

   z := x + y;
   dbms_output.put_line('z= ' || z);
END;
/