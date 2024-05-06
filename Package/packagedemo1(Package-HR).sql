--Package specification
-- hr.hire(1001,'A');
-- hr.fire(1001)
-- hr.hike(1001, 2000)
-- hr.experience(1001)

CREATE OR REPLACE PACKAGE hr AS
    PROCEDURE hire (
        p_empno NUMBER,
        p_ename VARCHAR2
    );

    PROCEDURE fire (
        p_empno NUMBER
    );

    PROCEDURE hike (
        p_empno  NUMBER,
        p_amount NUMBER
    );

    FUNCTION experience (
        p_empno NUMBER
    ) RETURN NUMBER;

END;
/
 --Package body

 CREATE OR REPLACE PACKAGE BODY HR
 AS

  PROCEDURE hire(p_empno NUMBER, p_ename VARCHAR2)
  AS
  BEGIN
    INSERT INTO emp(empno, ename) VALUES(p_empno, p_ename);
	dbms_output.put_line('record inserted');
  END hire;

 PROCEDURE fire(p_empno NUMBER)
 AS
 BEGIN
   DELETE FROM emp WHERE empno=p_empno;
   COMMIT;
	dbms_output.put_line('record deleted');
 END fire;

 PROCEDURE hike(p_empno NUMBER, p_amount NUMBER)
 AS
 BEGIN
   UPDATE emp SET sal=sal+p_amount WHERE empno=p_empno;
   COMMIT;
    dbms_output.put_line('salary increased');
 END hike;

 FUNCTION experience(p_empno NUMBER) RETURN NUMBER
 AS 
 v_hiredate DATE;

BEGIN
    SELECT
        hiredate
    INTO v_hiredate
    FROM
        emp
    WHERE
        empno = p_empno;

    RETURN trunc((sysdate - v_hiredate) / 365);
END experience;

end;
/