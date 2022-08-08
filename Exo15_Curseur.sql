DECLARE
    V_Nom emp.ename%type;
    V_Comm emp.comm%type;

    CURSOR Appreciation IS SELECT FROM ename,comm FROM emp;

BEGIN
    OPEN C_Appreciation;

        LOOP
        FETCH C_Appreciation INTO V_Nom,V_Comm;
        Exit WHEN C_Appreciation%NOTFOUND;

        IF V_Comm IS NUll THEN 
            DBMS_OUTPUT.PUT_Line(V_Nom||' EST UN CADRE QUI N''A PAS DE COMMISSION');
        ELSIF V_Comm>=500 THEN 
            DBMS_OUTPUT.PUT_Line(V_Nom||' EST UN BON VENDEUR QUI A UNE COMMISSION DE '||V_Comm);
        ELSE
            DBMS_OUTPUT.PUT_Line(V_Nom||' EST UN MAUVAIS COMMERCIAL AVEC '||V_Comm||'$ DE COMMISSION');
        END IF;
        END LOOP;

    CLOSE C_Appreciation;
END;
/