Accept numDept Prompt 'DONNEZ LE NUMERO DE DEPARTEMENT: ';
Accept nom Prompt 'DONNEZ LE NOM DU DEPARTEMENT: ';
Accept ville Prompt 'DONNEZ LA VILLE DU DEPARTEMENT: ';

BEGIN
    Insert Into Dept
    Values(&numDept,'&nom','&ville');
END;
/
