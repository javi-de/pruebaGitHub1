Set SERVEROUTPUT on
ACCEPT frase PROMPT 'Escribe una frase: '
DECLARE
	frase			varchar2(100):='&frase';
	pos_ini			number(2):=1;
	letrasFrase		number(2):=0;
BEGIN
	FOR I IN 1..LENGTH(frase) LOOP
		IF SUBSTR(frase, I, 1)=' ' THEN
			DBMS_OUTPUT.PUT_LINE(SUBSTR(frase, pos_ini, I-pos_ini)||'-->'||(I-pos_ini));
			letrasFrase:= letrasFrase + I-pos_ini;
			pos_ini:= I + 1;
		END IF;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE(SUBSTR(frase, pos_ini, LENGTH(frase)-pos_ini)||'-->'||(LENGTH(frase)-pos_ini));
	DBMS_OUTPUT.PUT_LINE(SUBSTR(frase, 1, LENGTH(frase)||'-->'||(letrasFrase + LENGTH(frase)-1));
END;
/