--Write a PL/SQL block to calculate the square and cube of the given number

set serveroutput on
declare
  num number:='&num';
  sq number:='&sq';
  cu number:='&num';
begin
  sq:= num*num;
  cu:= num*num*num;
  dbms_output.put_line('number:'||num);
  dbms_output.put_line('square:'||sq);
  dbms_output.put_line('cube:'||cu);
end;
/