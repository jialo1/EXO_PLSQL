Accept moy Prompt 'Donner la moyenne: ';
DECLARE
    V_moy Number:=&moy;
    Vrai boolean;
BEGIN
    If V_moy>=10 then
        Vrai := true;
    End If;

    If vrai=true then
        DBMS_OUTPUT.PUT_LINE('Passe');
    Else
        DBMS_OUTPUT.PUT_LINE('Redouble');
    End if;
END;
/