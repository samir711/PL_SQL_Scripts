-- update_salary(7369,1000,:s)

CREATE OR REPLACE PROCEDURE
update_salary(p_empno IN NUMBER, p_amount IN NUMBER, p_sal OUT NUMBER)
AS

BEGIN

UPDATE emp SET sal = sal + p_amount WHERE  empno = p_empno;

COMMIT;

dbms_output.put_line('Salary Increased ...');

SELECT sal INTO p_sal FROM emp WHERE empno = p_empno;

END;
/