Set SERVEROUTPUT on
ACCEPT tope PROMPT 'Escribe un numero: '
SET TIMING ON
DECLARE
	tope		number:=&numero;
	num1		number:=1;
	num2		number:=1;
	cont		number:=2;
	numAux		number;
BEGIN
	DBMS_OUTPUT.PUT_LINE(num1||' ');
	DBMS_OUTPUT.PUT_LINE(num2||' ');
	WHILE cont<=tope LOOP
		DBMS_OUTPUT.PUT_LINE(num1+num2||' ');
		numAux:=num1+num2;
		num2:= numAux;
		num1:=num2;
		cont:= cont +1;
	END LOOP;
	DBMS_OUTPUT.NEW_LINE;
END;
/
SET TIMING OFF
