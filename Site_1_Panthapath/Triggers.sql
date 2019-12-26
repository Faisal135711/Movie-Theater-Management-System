create or replace trigger Ticket_Insert
before insert
on Ticket
for each row
begin
select ticket_sequence.nextval
into :new.TicketID
from dual;
end;
/

create or replace trigger Movie_Insert
after insert on Movies
begin
	dbms_output.put_line('Movie Inserted!');
end;
/

create or replace trigger Customer_Insert
after insert on Customer
begin
	dbms_output.put_line('Customer Inserted!');
end;
/

create or replace trigger Manager_Insert
after insert on Manager
begin
	dbms_output.put_line('Manager Inserted!');
end;
/

create or replace trigger Hall_Insert
after insert on Hall
begin
	dbms_output.put_line('Hall Inserted!');
end;
/

create or replace trigger Show_Insert
after insert on Show
begin
	dbms_output.put_line('Show Inserted!');
end;
/

create or replace trigger Schedule_Insert
after insert on Schedule
begin
	dbms_output.put_line('Schedule Inserted!');
end;
/

create or replace trigger Seat_Insert
after insert on Seat
begin
	dbms_output.put_line('Seat Inserted!');
end;
/

create or replace trigger Payment_Insert
after insert on Payment
begin
	dbms_output.put_line('Payment Included!');
end;
/