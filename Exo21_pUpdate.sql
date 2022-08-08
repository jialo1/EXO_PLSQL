CREATE OR REPLACE Procedure P_Update(V_taux Number,V_dept emp.deptno%type)
IS
BEGIN
    UPDATE emp
    set sal=sal+sal*V_taux/100
    where deptno=V_dept;
END P_Update;
/ 