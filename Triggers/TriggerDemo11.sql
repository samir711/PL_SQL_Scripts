CREATE OR REPLACE TRIGGER dt1
BEFORE DROP
ON DATABASE
BEGIN
    IF USER IN('batch9am','batch2pm','usera' THEN
     raise_application_error(-20069,'You cannot drop any db object');
    END IF;
END;
/