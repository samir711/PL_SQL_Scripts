DECLARE 
    a NUMBER(4);
    b NUMBER(4);
    c NUMBER(4);
BEGIN
    a := &a;
    b := &b;
    c:= product(a, b);    --function call
    dbms_output.put_line('product=' || c);
END;
/
