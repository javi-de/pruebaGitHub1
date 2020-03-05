Set SERVEROUTPUT on
ACCEPT palabra PROMPT 'Escribe una palabra: '
ACCEPT numero PROMPT 'Escribe un numero: '
DECLARE
	palabra		varchar2(50):='&palabra';
	numero		number(2):=&numero;
 BEGIN
	IF numero>=1 AND numero<=LENGTH(palabra) THEN
		FOR I IN 1..numero LOOP
				DBMS_OUTPUT.PUT_LINE(SUBSTR(palabra, numero, 1));
		END LOOP;
	ELSE
		DBMS_OUTPUT.PUT_LINE('No existe esa posicion');
	END IF;
END;
/