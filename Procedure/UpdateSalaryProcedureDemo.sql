-- update_salary(7499, 1000)

CREATE OR REPLACE PROCEDURE
update_salary(p_empno IN NUMBER, p_amount IN NUMBER)
AS

BEGIN

UPDATE emp SET sal = sal + p_amount WHERE  empno = p_empno;

COMMIT;

dbms_output.put_line('Salary Increased ...');

END;
/