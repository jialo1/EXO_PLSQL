Create or replace Trigger t_control
Before insert or update or delete on dept

BEGIN
    if TO_CHAR(SYSDATE,'fmDay')IN('Mardi','Dimanche')
    or TO_CHAR(SYSDATE,'HH24:mi') not between '08:00' and '16:00' then
    -- rollback; unsing rollback
    Raise_Application_error(-20005,'Transaction interdite aux heures non ouvrables');
END if;
END t_control;
/