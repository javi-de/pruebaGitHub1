Set SERVEROUTPUT on
ACCEPT frase PROMPT 'Escribe una palabra: '
DECLARE
	frase				varchar2(100):=&frase;
	palindromo			frase%TYPE;
	fraseSinEspacios	frase%TYPE;
BEGIN
	FOR I IN 1..LENGTH(frase) LOOP
		--aqui se quitan todos los espacios y se mete el resto en fraseSinEspacios
	END LOOP;
	FOR I IN REVERSE 1..LENGTH(frase) LOOP
		palindromo:=palindromo||(SUBSTR(frase, I, 1);
	END LOOP;
	IF frase=palindromo THEN
		DBMS_OUTPUT.PUT_LINE('Es un palindormo');
	ELSE
		DBMS_OUTPUT.PUT_LINE('No es un palindormo');
	END IF;
END;
/