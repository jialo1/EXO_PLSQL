Accept fonction Prompt 'Donnez une Fonction: ';
BEGIN
    delete from emp
    where job='&Fonction';
END;
/
Select * from emp;