CREATE OR REPLACE TRIGGER st2
BEFORE DROP
ON batch9am.SCHEMA
BEGIN
    IF ora_dict_obj_type='TABLE' THEN
     raise_application_error(-20069,'You cannot drop table');
    END IF;
END;
/