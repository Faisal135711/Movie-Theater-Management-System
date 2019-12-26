set serveroutput on;
set verify off;

@@Display_Venues.sql;

accept value number prompt 'Choose an Option: ';

declare
	userInput number;
	vOpt number;
	op number;

begin
	userInput:= &value;
	if (userInput = 1) then
		@@Display_Venue_Options.sql;
	elsif (userInput = 2) then
		@@Display_Venue_Options.sql;
	elsif(userInput = 3) then
		@@Display_Venue_Options.sql;
	else
		dbms_output.put_line('Invalid Input.');
	end if;

	EXCEPTION 
   		WHEN no_data_found THEN 
      		dbms_output.put_line('Wrong Query!'); 
   		WHEN others THEN 
      		dbms_output.put_line('Error Detected!');
end;
/