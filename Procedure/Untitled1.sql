DECLARE

check_violate EXCEPTION;
pragma exception_init(check_violate, -2290);
cannot_insert_null EXCEPTION;
pragma exception_init(cannot_insert_null, -1400);

BEGIN

INSERT INTO STUDENT VALUES(&sid, ,'&sname', &m1);

EXCEPTION 
   WHEN check_violate THEN
     dbms_output.put_line('');
   WHEN cannot_insert_null THEN
     dbms_output.put_line('');

END;
/