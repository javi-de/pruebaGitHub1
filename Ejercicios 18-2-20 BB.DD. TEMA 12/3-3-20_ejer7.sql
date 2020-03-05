Set SERVEROUTPUT on
ACCEPT frase PROMPT 'Escribe una frase: '
DECLARE
	frase	varchar2(50):='&frase';
	pos_ini	number(2):=1;
 BEGIN
	FOR I IN 1..LENGTH(frase) LOOP
		IF	SUBSTR(frase, I, 1)=' ' THEN
			FOR Y IN 1..(I-pos_ini) LOOP
				DBMS_OUTPUT.PUT(SUBSTR(frase, pos_ini, I-pos_ini)||' ');
			END LOOP;
			pos_ini:= I+1;
		END IF;
	END LOOP;
	FOR J IN 1..(LENGTH(frase)-pos_ini+1) LOOP
		DBMS_OUTPUT.PUT(SUBSTR(frase, pos_ini, LENGTH(frase)-pos_ini+1)||' ');
	END LOOP;
	DBMS_OUTPUT.NEW_LINE;
END;
/