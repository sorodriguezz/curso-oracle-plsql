
DECLARE
 -- Constantes
    PI CONSTANT number := 3.141559;

 -- Variables
    area number;
    radio number;
BEGIN
    radio := 7;


    area := PI * (radio * radio);

    DBMS_OUTPUT.PUT_LINE('Area: ' || ROUND(area, 2) || 'cm2'); -- redondeo a 2 decimales
    DBMS_OUTPUT.PUT_LINE('Area: ' || ROUND(area) || 'cm2'); -- redondeo a numero natural
    DBMS_OUTPUT.PUT_LINE('Area: ' || ROUND(area, 4) || 'cm2'); -- redondeo a 4 decimales
END;
