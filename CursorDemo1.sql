DECLARE
CURSOR c1 IS SELECT * FROM hike;
r HIKE%ROWTYPE;

BEGIN
	
	OPEN c1;

	LOOP
		FETCH c1 INTO r;
    EXIT WHEN c1%NOTFOUND;
		UPDATE employee2 SET sal = sal + sal * r.per/100
		WHERE empno = r.empno;
	END LOOP;
	COMMIT;
    dbms_output.put_line(c1%ROWCOUNT || ' rows updated...');
	CLOSE c1;

END;
/