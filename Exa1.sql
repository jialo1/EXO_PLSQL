Accept nom Prompt 'Saisir votre nom: ';
Accept age Prompt 'Saisir votre age: ';

DECLARE
    V_Compteur Number:=0;
    V_nom varchar2(20):='&nom';
    V_age Number(3):=&age;
BEGIN 
   While V_Compteur<=4
    loop
     DBMS_OUTPUT.PUT_LINE('Bonjour ' ||V_nom||',Vous etes age de '||V_age||' ans');
     V_Compteur:=V_Compteur+1;
    End loop;
END;
/