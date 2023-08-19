DECLARE
    nombre NVARCHAR2(100) := ' SeBAstian ';
    apellido NVARCHAR2(100) := 'Rodriguez';
    nombreCompleto NVARCHAR2(200);
    hoy date := SYSDATE;
    nombre2 NVARCHAR2(100);
BEGIN
    nombreCompleto := REPLACE(TRIM(nombre), 'BA', 'ba') || ' ' ||apellido;

    DBMS_OUTPUT.PUT_LINE('Largo: ' || LENGTH(nombre)); -- saber largo de la variable
    DBMS_OUTPUT.PUT_LINE('Trim:' || TRIM(nombre) || ';'); -- Quitar espacios en blanco
    DBMS_OUTPUT.PUT_LINE('Minusculas:' || LOWER(nombre) || ';'); -- Volver todo a minusculas
    DBMS_OUTPUT.PUT_LINE('Mayusculas:' || UPPER(nombre) || ';'); -- Volver todo a mayusculas

    nombre := TRIM(nombre);
    DBMS_OUTPUT.PUT_LINE('Cortar: ' || SUBSTR(nombre,1,3)); -- Corta una cadena por posicion
    DBMS_OUTPUT.PUT_LINE('Reemplazo: ' || REPLACE(nombre,'BA', 'ba'));  -- reemplaza o quita lo que se ponga
    DBMS_OUTPUT.PUT_LINE('Nombre Completo: ' || nombreCompleto); -- nombre concatenado

    DBMS_OUTPUT.PUT_LINE('NVL: ' || NVL(nombre2, 'Es nulo')); -- si es nulo pone el texto

    -- Funcion de fecha
    DBMS_OUTPUT.PUT_LINE('Hoy: ' || hoy);
    DBMS_OUTPUT.PUT_LINE('Agregar mes: ' || ADD_MONTHS(hoy,1));
    DBMS_OUTPUT.PUT_LINE('Agregar dia: ' || (hoy+1));
    DBMS_OUTPUT.PUT_LINE('Dia: ' || TO_CHAR(hoy, 'dd'));
    DBMS_OUTPUT.PUT_LINE('Dia y Mes: ' || TO_CHAR(hoy, 'dd-MM'));
    DBMS_OUTPUT.PUT_LINE('Año: ' || TO_CHAR(hoy, 'yyyy'));
END;