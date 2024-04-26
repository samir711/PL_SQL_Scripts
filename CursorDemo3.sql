DECLARE
CURSOR c1 IS SELECT sal FROM emp;
v_sal EMP.SAL%TYPE;
v_sum NUMBER:=0;

BEGIN
  OPEN c1;

  LOOP
    FETCH c1 INTO v_sal;
  EXIT WHEN c1%NOTFOUND;
    v_sum := v_sum + NVL(v_sal,0);
  END LOOP;

dbms_output.put_line('Sum of salaries = ' || v_sum);
CLOSE c1;
END;
/