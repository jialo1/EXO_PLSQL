CREATE or REPLACE Procedure P_delete(numD dept.deptno%type)
IS
BEGIN
    Delete from dept
    where deptno = numD;
END;
/