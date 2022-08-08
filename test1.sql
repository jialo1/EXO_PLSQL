Accept taux Prompt 'Donner un taux: ';
DECLARE
    V_taux Number:=&taux;
BEGIN
    update emp 
    SET deptno=40,sal=sal+sal*V_taux/100
    WHERE job=’SALESMAN’ ;
END;
/
