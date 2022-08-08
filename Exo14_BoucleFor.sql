-- Accept n prompt 'DONNEZ UN ENTIER: ';
-- DECLARE
--     V_Cpt Number;
-- BEGIN
--     For V_Cpt In 1..12
--     loop
--         DBMS_OUTPUT.PUT_LINE(V_Cpt||'x'||&n||'='||V_Cpt*&n);
--     End loop;
-- END;
-- /

Accept nombre prompt 'DONNEZ UN ENTIER: ';
DECLARE
    V_Compteur Number:=0;
BEGIN
    For V_Compteur In 1..12

    loop
        DBMS_OUTPUT.PUT_LINE(&nombre||'x'||V_Compteur||'='||V_Compteur*&nombre);
    End loop;
    
END;
/
