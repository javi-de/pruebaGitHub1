Set SERVEROUTPUT on
ACCEPT palabra1 PROMPT 'Escribe una palabra: '
DECLARE
	palabra1		varchar2(50):='&palabra1';
 BEGIN
	FOR I IN 1..LENGTH(palabra1) LOOP
			DBMS_OUTPUT.PUT(palabra1||' ');
	END LOOP;
	DBMS_OUTPUT.NEW_LINE;
END;
/