--creer un programme plsql qui affiche le nom et l'age--
-- DECLARE
--     V_nom varchar2(20):='BENZEMA';
--     V_age Number(3):=24;
-- BEGIN   
--     DBMS_OUTPUT.PUT_LINE('Bonjour ' ||V_Nom||',Vous avez '||V_age||' ans');
-- END;
-- /

Accept nom Prompt 'Saisir votre nom: ';
Accept age Prompt 'Saisir votre age: ';

DECLARE
    V_nom varchar2(20):='&nom';
    V_age Number(3):=&age;
BEGIN   
    DBMS_OUTPUT.PUT_LINE('Bonjour ' ||V_nom||',Vous avez '||V_age||' ans');
END;
/


