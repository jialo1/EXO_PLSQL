CREATE or REPLACE FUNCTION F_impot(V_salaire Number)
Return Number IS

BEGIN
    Return (V_salaire*0.05);
End F_impot;
/

