--: créer un script PL/SQL qui affiche le nom, la fonction et le salaire d’un employé dont le matricule est saisi par l’utilisateur--
Accept matricule Prompt 'VEUILLEZ SAISIR UN MATRICULE SVP:';
DECLARE
    V_Nom Varchar2(20);
    V_Fonction Varchar2(15);
    V_Salaire Number;
BEGIN
    Select ename,job,sal
    Into V_Nom,V_Fonction,V_Salaire
    From emp 
    where empno=&matricule;
    DBMS_OUTPUT.PUT_LINE(V_Nom||' EST UN '||V_Fonction||' QUI GAGNE '||V_Salaire||' $ PAR MOIS ');
    END;
/

