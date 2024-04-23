DECLARE
v_deptno DEPT.DEPTNO%TYPE;
r DEPT%ROWTYPE;

BEGIN
   v_deptno := &deptno;

   SELECT * INTO r FROM dept WHERE deptno = v_deptno;
   dbms_output.put_line(r.dname || '   ' || r.loc);

END;
/