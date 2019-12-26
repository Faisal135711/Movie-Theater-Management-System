dbms_output.put_line('1. Halls');
dbms_output.put_line('2. Show Times');
dbms_output.put_line('3. Seat Types');
dbms_output.put_line('4. Movie Schedule');
dbms_output.put_line('5. Movies Playing');
dbms_output.put_line('6. Buy Tickets');
dbms_output.put_line('7. Manger Information');
dbms_output.put_line('8. Movie Specific Information');


dbms_output.put_line(chr(13)||chr(10));

op:= 8;

dbms_output.put_line('User input is : ' || userInput);
dbms_output.put_line('Selected Option is : ' || op);

if(op = 1) then
	Display_Hall(userInput);
end if;

if(op = 2) then
	Display_Show(userInput);
end if;

if(op = 3) then
	Display_Seat(userInput);
end if;
if(op = 4) then
	Display_Schedule(userInput);	
end if;

if(op = 5) then
	Display_Movies(userInput);
end if;

if(op = 6) then
	Buy_Tickets(userInput);
end if;

if(op = 7) then
	Display_Manager(userInput);
end if;

if(op = 8) then
	Movie_Specific_Information(userInput);
end if;

