Set SERVEROUTPUT on
ACCEPT string PROMPT 'Escribe un nombre: '
ACCEPT integ PROMPT 'Escribe una edad: '
DECLARE
	asignatura		varchar2(20):=&string;
	nota		number(3):=&integ;
BEGIN
	IF nota<5	THEN
		DBMS_OUTPUT.PUT_LINE('Has sacado un INSUFUCIENTE en '||asignatura);	
	ELSE
		IF nota<6	THEN
			DBMS_OUTPUT.PUT_LINE('Has sacado un SUFICIENTE en '||asignatura);
		ELSE
			IF	nota<7	THEN
				DBMS_OUTPUT.PUT_LINE('Has sacado un BIEN en '||asignatura);
			ELSE
				IF	nota<9	THEN
					DBMS_OUTPUT.PUT_LINE('Has sacado un NOTABLE en '||asignatura);
				ELSE
					DBMS_OUTPUT.PUT_LINE('Has sacado un SOBRESALIENTE en '||asignatura);
				END IF;
			END IF;
		END IF;
	END IF;
END;
/