DECLARE
    V_Compter Number:=0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(V_Compter);

        V_Compter:=V_Compter+1;
        Exit when V_Compter>20;
        
    End loop;
END;
/