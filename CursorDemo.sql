DECLARE 
 CURSOR c1 IS SELECT  ename, sal FROM emp;
 v_ename EMP.ENAME%TYPE;
 v_sal   EMP.SAL%TYPE;


BEGIN
OPEN c1;

  LOOP

     FETCH c1 INTO v_ename, v_sal;
     EXIT WHEN c1%NOTFOUND;
     dbms_output.put_line(v_ename || ' ' || v_sal);

 END LOOP;
 CLOSE c1;

END;
/