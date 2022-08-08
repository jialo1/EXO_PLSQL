Create or replace Trigger t_merge
After insert or update or delete on dept

BEGIN
    P_merge;
END t_merge;
/