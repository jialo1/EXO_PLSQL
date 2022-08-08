Create or replace Trigger t_merge
After insert on dept

BEGIN
MERGE Into Service s
    using dept d on(d.deptno=s.deptno)

    when Matched then update
    set s.dname=d.dname,s.loc=d.loc

    when not Matched then insert
    values(d.deptno,d.dname,d.loc);
END t_merge;
/