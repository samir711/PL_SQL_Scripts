--getdept(20)   => 20th dept records

CREATE OR REPLACE FUNCTION
getdept(p_deptno NUMBER) RETURN SYS_REFCURSOR
AS
c1 SYS_REFCURSOR;

BEGIN

    OPEN c1 FOR SELECT * FROM emp WHERE deptno=p_deptno;

	RETURN c1;
END;
/