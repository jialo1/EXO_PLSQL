DECLARE
    V_Nom emp.ename%type;
    V_job emp.job%type;
BEGIN
    Select ename,job
    Into V_Nom,V_job
    From emp

    if V_job:='MANAGER' then 
        DBMS_OUTPUT.PUT_Line('M. '||V_Nom||'DONT LA FONCTION EST '||V_job||'EST UN CADRE DE l''entreprise');

    Elsif V_job:='PRESIDENT' then 
        DBMS_OUTPUT.PUT_Line('M. '||V_Nom||'DONT LA FONCTION EST '||V_job||'EST UN haut CADRE DE l''entreprise');

    Else
        DBMS_OUTPUT.PUT_Line('M. '||V_Nom||'DONT LA FONCTION EST un agent commercial');
    END IF;
END;
/
