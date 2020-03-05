Set SERVEROUTPUT on
BEGIN
	FOR fila IN(SELECT nombre, num_sup, num_dep
				FROM	empleado
				WHERE	UPPER(puesto)='ANALISTA'
				ORDER BY nombre)
												 LOOP
		DBMS_OUTPUT.PUT_LINE(fila.nombre||' '||fila.num_sup||' '||fila.num_dep);
	END LOOP;
END;
/