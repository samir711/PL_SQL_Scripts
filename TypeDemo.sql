DECLARE
 v_empno EMP.EMPNO%TYPE; -- NUMBER(4)
 v_ename EMP.ENAME%TYPE; --VARACHAR2(10
 v_sal EMP.SAL%TYPE;     --NUMBER(5,2)

BEGIN
  v_empno := &empno;   -- 7934
  SELECT ename, sal INTO v_ename, v_sal FROM emp
  WHERE empno = v_empno;
  dbms_output.put_line(v_ename || '   '||v_sal);


END;
/