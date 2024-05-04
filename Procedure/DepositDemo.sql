

CREATE OR REPLACE PROCEDURE
deposit(p_acno IN NUMBER, p_amount IN NUMBER)
AS
BEGIN
 UPDATE accounts SET balance=balance+p_amount
 WHERE acno=p_acno;
 COMMIT;
 dbms_output.put_line('amount deposited successfully...');

END;
/