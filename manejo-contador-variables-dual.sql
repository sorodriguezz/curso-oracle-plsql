SELECT * FROM dual; -- tabla dummy


SELECT COUNT(*) FROM dual; -- cantidad de registros en dual

SELECT USER FROM dual;  -- trae al usuario de mi bd

SELECT USER, COUNT(*) FROM dual;

DECLARE
    cantidad number;
    usuario nvarchar2(100);
BEGIN
    SELECT USER INTO usuario FROM dual; -- inserto el usuario en la variable usuario

    DBMS_OUTPUT.PUT_LINE('Usuario: ' || usuario);
END;
