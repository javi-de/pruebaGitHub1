Set SERVEROUTPUT on
DECLARE
	num		number(3):=2;
BEGIN
	WHILE num<=100 LOOP
		DBMS_OUTPUT.PUT_LINE(num);
		num:=num+2;
	END LOOP;
END;
/