CREATE OR REPLACE PROCEDURE
update_photo(p_empno NUMBER, p_fname VARCHAR2)
AS
s BFILE;   --to hold image path
t BLOB;    -- to hold image binary data
length NUMBER;
BEGIN
 s:= bfilename('D1',p_fname);   -- s =. 1.jpg
 
 SELECT ephoto INTO t FROM emp2 WHERE empno=p_empno FOR UPDATE; -- lock the record
 dbms_lob.OPEN(s,dbms_lob.lob_readonly);   -- s image opens in read mode
 length := dbms_lob.getlength(s);     -- size of image
 dbms_lob.LoadFromFile(t,s,length);   -- reads size  of image from s and write in t
 UPDATE emp2 SET ephoto=t WHERE empno=p_empno;
 COMMIT;
 dbms_output.put_line('image saved');


END;
/