Set SERVEROUTPUT on
ACCEPT numero PROMPT 'Escribe un numero: '
DECLARE
	num		number(3):=&numero;
BEGIN
	WHILE num<=1000 LOOP
		DBMS_OUTPUT.PUT_LINE(num);
		num:=num+2;
	END LOOP;
END;
/