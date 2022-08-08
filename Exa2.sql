Accept taux Prompt 'Donner un taux: ';
-- Accept depart Prompt 'Donnez un numero de departement: ';
DECLARE
    V_taux Number:=&taux;
    -- V_dept emp.deptno%type:=&depart;
BEGIN
    update emp
    set sal=sal+sal*V_taux/100
    -- where deptno=V_dept;
    where JOB='SALESMAN';
END;
/
Select * from emp;