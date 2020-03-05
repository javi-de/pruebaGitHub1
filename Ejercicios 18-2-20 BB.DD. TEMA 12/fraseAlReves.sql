Set SERVEROUTPUT on
ACCEPT frase PROMPT 'Escribe una frase: '
DECLARE
	frase			varchar2(50):=&frase;
	fraseInversa	frase%TYPE:='';
BEGIN
	FOR I IN REVERSE 1..LENGTH(frase) LOOP
		fraseInversa:=fraseInversa||(SUBSTR(frase, I, 1);
	END LOOP;
	DBMS_OUTPUT.PUT_LINE(fraseInversa);
END;
/