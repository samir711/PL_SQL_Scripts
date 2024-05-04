-- package specification

CREATE OR REPLACE PACKAGE math
AS
   PROCEDURE addition(x NUMBER, y NUMBER);
   FUNCTION product(x NUMBER, y NUMBER) RETURN NUMBER;
END;
/

--package body 

CREATE OR REPLACE PACKAGE BODY math
AS
   PROCEDURE addition(x NUMBER, y NUMBER)
   AS
   BEGIN
     dbms_output.put_line('sum = ' || (x + y));
   END addition;


   FUNCTION product(x NUMBER, y NUMBER) RETURN NUMBER;
   AS
   BEGIN
     RETURN x * y;
   END product;
END;
/