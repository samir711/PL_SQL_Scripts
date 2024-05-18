--EXEC drop_table('salgrade');


CREATE OR REPLACE PROCEDURE
drop_table(n VARCHAR2)
AS
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE ' || n;
  dbms_output.put_line(n || ' table dropped');
 END;
 /