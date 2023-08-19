DECLARE
    -- Definir arreglos
    TYPE alumnosArray IS VARRAY(5) OF NVARCHAR2(100);
    TYPE notasArray IS VARRAY(5) OF NUMBER;

    -- Usar arreglos
    alumnos alumnosArray;
    notas notasArray;
BEGIN
    alumnos := alumnosArray('Sebastian', 'Esteban', 'Andrea', 'Osvaldo', 'Rosa');
    notas := notasArray(90, 100, 95, 89, 75);

    DBMS_OUTPUT.PUT_LINE( alumnos(1) );
    DBMS_OUTPUT.PUT_LINE( alumnos(2) );

    DBMS_OUTPUT.PUT_LINE( notas(1) );
    DBMS_OUTPUT.PUT_LINE( notas(2) );
END;