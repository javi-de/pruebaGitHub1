Set SERVEROUTPUT on
ACCEPT palabra1 PROMPT 'Escribe una palabra: '
ACCEPT palabra2 PROMPT 'Escribe otra palabra: '
DECLARE
	palabra1		varchar2(50):='&palabra1';
	palabra2		varchar2(50):='&palabra2';
 BEGIN
	FOR I IN 1..LENGTH(palabra2) LOOP
			DBMS_OUTPUT.PUT(palabra1||' ');
	END LOOP;
	DBMS_OUTPUT.NEW_LINE;
END;
/