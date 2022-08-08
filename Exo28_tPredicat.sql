Create or replace Trigger t_Predicat
Before insert or update or delete on dept

BEGIN
    if TO_CHAR(SYSDATE,'fmDay')IN('Mardi','Dimanche')
    or TO_CHAR(SYSDATE,'HH24:mi') not between '08:00' and '16:00' then
    
    if inserting then
    Raise_Application_error(-20009,'Insertion interdite !');

    elsif updating then
    Raise_Application_error(-20010,'Mise a jour interdite !');

    elsif deleting then
    Raise_Application_error(-20011,'Suppression non autorise !');

    else
    Raise_Application_error(-20005,'Transaction non autorise !');
   
END if;
END if;
END t_Predicat ;
/