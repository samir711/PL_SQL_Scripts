  

	CREATE OR REPLACE PROCEDURE
	withdraw(p_acno IN NUMBER, p_amount IN NUMBER)
	AS
	   v_balance ACCOUNTS.BALANCE%TYPE;

	BEGIN

		SELECT balance INTO v_balance FROM accounts WHERE acno=p_acno;

		IF p_amount > v_balance THEN
		 raise_application_error(-20050,'Insufficient Balance');
		END IF

		UPDATE accounts SET balance=balance-p_amount WHERE acno=p_acno;

		COMMIT;

		dbms_output.put_line('Successful Withdrawl');


	END;
/