/*Accept mat Prompt 'donner un matricule svp: ';
DECLARE
    --QUAND ON CONNAIT LA TABLE--
    -- V_Nom Varchar2(10);
    -- V_Fonct Varchar2(10);
    -- V_Sal   Number;

    --QUAND ON IGNORE le type de DONNESS DE LA TABLE--
    V_Nom emp.ename%type;
    V_Fonct emp.job%type;
    V_Sal emp.sal%type;
BEGIN
    Select ename,job,sal
    Into V_Nom,V_Fonct,V_Sal
    From emp
    where empno=&mat;
    DBMS_OUTPUT.PUT_LINE(V_Nom||' est un '||V_Fonct||' qui touche '||V_Sal||' par mois');
END;
/
*/

Accept dep Prompt 'Saisir le departement: ';
Accept nom Prompt 'Saisir le nom: ';
Accept loc Prompt 'Saisir le lieu: ';
BEGIN
    Insert Into Dept
    Values(&dep,'&nom','&loc');
END;
/