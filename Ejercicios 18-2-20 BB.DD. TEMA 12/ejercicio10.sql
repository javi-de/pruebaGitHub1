Set SERVEROUTPUT on
ACCEPT numero PROMPT 'Escribe un numero: '
DECLARE
	num		number(4):=&numero;
BEGIN
	IF num MOD 2= 0	THEN
		WHILE num<=1000 LOOP
			DBMS_OUTPUT.PUT_LINE(num);
			num:=num+2;
		END LOOP;
	ELSE
		WHILE num<=1111 LOOP
			DBMS_OUTPUT.PUT_LINE(num);
			num:=num+2;
		END LOOP;
	END IF;
END;
/