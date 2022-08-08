CREATE or replace Procedure P_Insert(numDpt Number,nomDpt Varchar2,ville Varchar2)
IS
BEGIN
    insert Into dept
    values (numDpt,nomDpt,ville);
END P_Insert;
/