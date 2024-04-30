DECLARE
CURSOR c1 IS SELECT * FROM student;
r1 STUDENT%ROWTYPE;
r2 RESULT%ROWTYPE;

BEGIN
OPEN c1;

	LOOP
		FETCH c1 INTO r1;
	EXIT WHEN c1%NOTFOUND;
	 r2.total := r1.m1+r1.m2+r1.m3;
	 r2.avrg := r2.total / 3;

	 IF r1.m1 >=40 AND r1.m2 >=40 AND r1.m3 >=40 THEN
		 r2.result :='PASS';
	 ELSE
		 r2.result :='FAIL';
	 END IF;
	  INSERT INTO result VALUES(r1.sid, r2.total, r2.avrg, r2.result);

  END LOOP;
  COMMIT;
  dbms_output.put_line('Result stored in result table');

 CLOSE c1;

END;
/