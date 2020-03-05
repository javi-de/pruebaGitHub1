Set SERVEROUTPUT on
ACCEPT numero PROMPT 'Escribe un numero: '
DECLARE
	num		number(3):=&numero;
BEGIN
	FOR I IN 1..10 LOOP
		DBMS_OUTPUT.PUT_LINE(num||' x '||I||' = '||(num*I));
	END LOOP;
END;
/