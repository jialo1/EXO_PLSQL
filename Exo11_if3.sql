
Accept matricule Prompt 'Veuillez saisir un matricule: ';
DECLARE
    V_Nom emp.ename%type;
    V_Comm emp.comm%type;
BEGIN
    Select ename,comm
    Into V_Nom,V_Comm
    From emp
    where empno = &mat;

    if V_Comm IS NUll then 
        DBMS_OUTPUT.PUT_Line(V_Nom||' EST UN CADRE QUI N''A PAS DE COMMISSION');

    Elsif V_Comm>=500 then 
        DBMS_OUTPUT.PUT_Line(V_Nom||' EST UN BON VENDEUR QUI A UNE COMMISSION DE '||V_Comm);

    Else
        DBMS_OUTPUT.PUT_Line(V_Nom||' EST UN MAUVAIS COMMERCIAL AVEC '||V_Comm||'$ DE COMMISSION');
    END IF;
END;
/
