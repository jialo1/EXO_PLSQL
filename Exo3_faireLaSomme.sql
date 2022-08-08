Accept n1 Prompt 'Donner un nombre:';
Accept n2 Prompt 'Donner un autre nombre:';

DECLARE
    A Number:=&n1;
    B Number:=&n2;
    S Number;
BEGIN
    S:=A+B;
    DBMS_OUTPUT.PUT_LINE('La somme de '||A||' et '||B||' est: '||S);
END;
/