CREATE OR REPLACE FUNCTION F_Employe(mat emp.empno%type)
Return Varchar2 IS
    V_nom emp.ename%type;
    V_sal emp.sal%type;
    V_embauche emp.hiredate%type;
    V_employe Varchar2(100);
BEGIN
    SELECT ename,sal,hiredate
    into V_nom,V_sal,V_embauche
    From emp
    Where empno=mat;
    V_employe:=V_nom||' gagne $'||V_sal||' depuis le '||V_embauche;
Return V_employe;
END F_Employe;
/
