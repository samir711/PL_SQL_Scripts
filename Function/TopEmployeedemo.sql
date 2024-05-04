--gettopn(13) => top 3 records

CREATE OR REPLACE FUNCTION
gettopn(n NUMBER) RETURN SYS_REFCURSOR
AS

   c1 SYS_REFCURSOR;

BEGIN
    OPEN c1  FOR SELECT * FROM(SELECT ename, sal, DENSE_RANK() OVER(ORDER BY sal desc)
	AS RANK FROM emp WHERE rank<=n;

	RETURNc1;

END;
/


