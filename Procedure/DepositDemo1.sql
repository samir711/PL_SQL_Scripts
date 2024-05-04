-- deposite(1001, 20000,:b)

CREATE OR REPLACE PROCEDURE
deposit(p_acno IN NUMBER, p_amount IN NUMBER,
p_balance OUT NUMBER)
AS

 BEGIN
    UPDATE accounts SET balance=balance+p_amount
    WHERE acno=p_acno;
    COMMIT;
 dbms_output.put_line('Transaction  successfully...');

  