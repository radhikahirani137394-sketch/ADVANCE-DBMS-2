set serveroutput on
declare
pnm char(9);
pp number(9);
id number:=&id;
begin
select pron,prop into pnm,pp from product where proid=id;
dbms_output.put_line('product name:'||pnm||'price:'||pp);
exception
when no_data_found then 
dbms_output.put_line ('product id:'||id||'not available in table');
end;
/