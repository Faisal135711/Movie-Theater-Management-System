set serveroutput on
declare

begin
dbms_output.put_line('1. Panthapath');
dbms_output.put_line('2. Bashundhara');
dbms_output.put_line('3. Banani');

EXCEPTION 
   WHEN no_data_found THEN 
      dbms_output.put_line('Wrong Query!'); 
   WHEN others THEN 
      dbms_output.put_line('Error Detected!');
      
end;
/