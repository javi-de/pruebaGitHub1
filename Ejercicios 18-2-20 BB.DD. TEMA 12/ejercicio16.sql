Set SERVEROUTPUT on
ACCEPT numero PROMPT 'Escribe un numero: '
DECLARE
	num		number(3):=&numero;
	I		number(3):=1;
BEGIN
	LOOP
		EXIT WHEN I>10;
		DBMS_OUTPUT.PUT_LINE(num||' x '||I||' = '||(num*I));
		I:=I+1;
	END LOOP;
END;
/