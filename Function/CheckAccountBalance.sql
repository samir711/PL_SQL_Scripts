--check-balance(1001) => 100000

CREATE OR REPLACE FUNCTION
check_balance(p_acno ACCOUNTS.ACNO%TYPE) RETURN NUMBER
AS
v_balance ACCOUNTS.BALANCE%TYPE;
BEGIN
  SELECT balance INTO v_balance FROM accounts WHERE acno=p_acno;

  RETURN v_balance;

  END;
  /