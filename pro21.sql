set serveroutput on
declare
n1 number:=&n1;
n2 number:=&n2;
d number;
begin
dbms_output.put_line('value 1:'||n1);
dbms_output.put_line('value 2:'||n2);
d:=n1/n2;
dbms_output.put_line('answer:'||d);
exception
when zero_divide then
dbms_output.put_line('you are trying to divide no by zero');
dbms_output.put_line('no 2 must be>0 so reenter no');
end;
/









