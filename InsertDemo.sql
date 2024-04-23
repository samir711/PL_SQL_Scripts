DECLARE 
r STUDENT%ROWTYPE;

BEGIN
r.sid := &sid;
r.sname := &sname;
r.m1 := &m1;

INSERT INTO student VALUES(r.sid, r.sname, r.m1);
COMMIT;

dbms_output.put_line('Record inserted...');


END;
/