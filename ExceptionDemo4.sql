DECLARE
 v_job EMP.JOB%TYPE;
 r EMP%ROWTYPE;

BEGIN
  v_job:='&job';
 
 SELECT * INTO r FROM emp WHERE job = v_job;
 
 dbms_output.put_line(r.ename ||' ' || r.job ||' ' ||r.sal);

 EXCEPTION
    WHEN too_many_rows THEN
	dbms_output.put_line('many employees are there ...');


END;
/