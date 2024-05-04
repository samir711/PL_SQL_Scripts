--product(2,3)  => 6

CREATE OR REPLACE FUNCTION
product(x NUMBER, y NUMBER) RETURN NUMBER
AS

z NUMBER(4);

BEGIN

  z:= x * y;

  RETURN z;

END;
/