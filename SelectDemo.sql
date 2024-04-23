DECLARE
v_empno NUMBER(4);
v_ename VARCHAR2(10);
v_sal	NUMBER(7,2);

BEGIN
v_empno := &empno; -- 7499
SELECT ename, sal INTO v_ename, v_sal
FROM emp
WHERE empno = v_empno;

dbms_output.put_line(v_ename || ' ' || v_sal);

END;
/