create or replace procedure Buy_Tickets(n in number)
	is
	BuyTickets_VID number;
	BuyTickets_MID number;
	BuyTickets_SID number;
	BuyTickets_STID number;
	BuyTickets_HID number;
	BuyTickets_Date varchar2(20);

	begin

	BuyTickets_VID := 1;
	BuyTickets_MID := 1;
	BuyTickets_SID := 1;
	BuyTickets_STID:= 1;
	BuyTickets_HID := 1;
	BuyTickets_Date := '10-oct-2019';

	if(n = 1) then
		Insert into Ticket(V_ID,H_ID,S_ID,ST_ID,M_ID,M_Date) values(BuyTickets_VID,BuyTickets_HID,BuyTickets_SID,BuyTickets_STID,BuyTickets_MID,BuyTickets_Date);
		commit;

	elsif(n = 2) then
		Insert into Ticket(V_ID,H_ID,S_ID,ST_ID,M_ID,M_Date)@Bashundhara values(10,BuyTickets_VID,BuyTickets_HID,BuyTickets_SID,BuyTickets_STID,BuyTickets_MID,BuyTickets_Date);
		commit;
	end if;

	end Buy_Tickets;
	/