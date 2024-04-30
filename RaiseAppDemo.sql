DECLARE
  v_empno EMP.EMPNO%TYPE;
  v_amount NUMBER;
  -- sunday_not_allow EXCEPTION;

BEGIN
 v_empno  := &empno;
 v_amount :=&amount;

  IF to_char(sysdate,'dy') ='tue'THEN
    RAISE_APPLICATION_ERROR(-20050,'You cannot update salary on Sunday');
  END IF;

  UPDATE emp SET sal = sal + v_amount WHERE empno=v_empno;

  COMMIT;

  dbms_output.put_line('sal increased.');
  END;
/
