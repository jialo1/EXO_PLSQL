-- DECLARE
--     V_Cpt Number:=0;
-- BEGIN
--     While V_Cpt<=12
--     LOOP
--         DBMS_OUTPUT.PUT_LINE(V_Cpt||'x7='||V_Cpt*7);
--         V_Cpt:=V_Cpt+1;
--     End loop;
-- END;
-- /
DECLARE
    V_Compteur Number:=0;
BEGIN
    While V_Compteur<=12

    LOOP
        DBMS_OUTPUT.PUT_LINE('7x'||V_Compteur||'='||V_Compteur*7);
        V_Compteur:=V_Compteur+1;
    End loop;
    
END;
/