DECLARE
    V_nom emp.ename%type;
    V_salaire emp.sal%type;
    V_impot Number;
    V_salaireNet Number;

    CURSOR C_impot IS SELECT ename,sal FROM emp;

BEGIN
OPEN C_impot;
    For V_Cpt in 1..5
        LOOP
        FETCH C_impot INTO V_nom,V_salaire;

        V_impot := V_salaire*0.05;
        V_salaireNet := V_salaire-V_impot;

        DBMS_OUTPUT.PUT_Line(V_nom||' GAGNE UN SALAIRE NET DE '||V_salaireNet||'$ et paye '||V_impot||'$ D''IMPOT');

        END LOOP;

    CLOSE C_impot;
END;
/