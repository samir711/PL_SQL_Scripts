--Experience(7369) =>

CREATE OR REPLACE FUNCTION
experience(p_empno NUMBER) RETURN NUMBER
AS
v_hiredate DATE;
v_exp INT;

BEGIN
 
 SELECT hiredate INTO v_hiredate FROM emp WHERE empno=p_empno;
 v_exp:= TRUNC((sysdate-v_hiredate)/365);
 RETURN v_exp;
END;
/