Set SERVEROUTPUT on
ACCEPT palabra PROMPT 'Escribe una palabra: '
DECLARE
	palabra		varchar2(50):='&palabra';
	palindromo	palabra%TYPE:='';
BEGIN
	FOR I IN REVERSE 1..LENGTH(palabra) LOOP
		palindromo:=palindromo||SUBSTR(palabra, I, 1);
	END LOOP;
	IF palabra=palindromo THEN
		DBMS_OUTPUT.PUT_LINE('Es un palindormo');
	ELSE
		DBMS_OUTPUT.PUT_LINE('No es un palindormo');
	END IF;
END;
/
------------------------------------------------------------------
Set SERVEROUTPUT on
ACCEPT palabra PROMPT 'Escribe una palabra: '
DECLARE
	palabra			varchar2(50):='&palabra';
	cont			number(2):=1;
	es_palindromo	boolean;
BEGIN
	WHILE cont <=LENGTH(palabra)/2 AND es_palindromo LOOP
		IF SUBSTR(palabra, cont, 1)!= SUBSTR(palabra, LENGTH(palabra)-cont+1, 1) THEN
			es_palindromo:=false;
		END IF;
		cont:= cont+1;
	END LOOP;
	IF es_palindromo THEN
		DBMS_OUTPUT.PUT_LINE('Es un palindormo');
	ELSE
		DBMS_OUTPUT.PUT_LINE('No es un palindormo');
	END IF;
END;
/