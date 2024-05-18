CREATE OR REPLACE TRIGGER st1
BEFORE DROP
ON batch9am.SCHEMA
BEGIN
   raise_application_error(-20066,'You cannot drop DB object');
END;
/