CREATE or REPLACE FUNCTION F_SAL_ANNUELLE(V_salaire Number)
Return Number IS

BEGIN
    Return (V_salaire*12);
End F_SAL_ANNUEL;
/