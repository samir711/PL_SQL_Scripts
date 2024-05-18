CREATE OR REPLACE TRIGGER t4
BEFORE INSERT OR UPDATE OR DELETE
ON emp

DECLARE
h INT;

BEGIN
   h:= to_char(sysdate, 'HH24');
   IF h NOT BETWEEN 10 TO 15 THEN 
     raise_application_error(-20070,'DMLs allowed between 10 AM to 4 PM');
   END IF;
END;
/
