DECLARE
v_sid STUDENT.SID%TYPE;
r1  STUDENT%ROWTYPE;
r2  RESULT%ROWTYPE;

BEGIN
v_sid := &sid;    --1001

SELECT * INTO r1 FROM student 
WHERE sid = v_sid;

r2.total := r1.m1 + r1.m2 + r1.m3;
r2.avrg := r2.total / 3;

IF r1.m1 >= 40 AND r1.m2 >=40 AND r1.m3 >= 40 THEN
	IF r2.avrg >=60 THEN
		r2.result := 'FIRST';
	ELSIF r2.avrg >=50 THEN
		   r2.result := 'SECOND';
	ELSE 
		 r2.result := 'THIRD';
    END IF;
ELSE 
    r2.result := 'FAIL';
END IF;

INSERT INTO result VALUES(v_sid, r2.total, r2.avrg, r2.result);
COMMIT;
DBMS_OUTPUT.PUT_LINE('Result stored in RESULT table');

END;
/