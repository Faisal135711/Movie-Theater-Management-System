create or replace procedure Display_Hall(n in number)
	is
	begin
	if(n = 1) then
		for cursor in (select * from Hall@Panthapath) loop
			dbms_output.put_line(cursor.HallID || ' ' || cursor.HallName || ' ' || cursor.category || ' ' || cursor.totalSeats);
		end loop;
	elsif(n = 2) then
		for cursor in (select * from Hall@Bashundhara) loop
			dbms_output.put_line(cursor.HallID || ' ' || cursor.HallName || ' ' || cursor.category || ' ' || cursor.totalSeats);
		end loop;

	elsif(n = 3) then
		for cursor in (select * from Hall) loop
			dbms_output.put_line(cursor.HallID || ' ' || cursor.HallName || ' ' || cursor.category || ' ' || cursor.totalSeats);
		end loop;

	else 
		dbms_output.put_line('Invalid Input.');
	end if;

	end Display_Hall;
	/

create or replace procedure Display_Show(n in number)
	is
	begin
	if(n = 3) then
		for cursor in (select * from Show) loop
		dbms_output.put_line(cursor.ShowId || ' ' || cursor.ShowTime);
		end loop;
	elsif(n = 2) then
		for cursor in (select * from Show @Bashundhara) loop
		dbms_output.put_line(cursor.ShowId || ' ' || cursor.ShowTime);
		end loop;

	elsif(n = 1) then
		for cursor in (select * from Show @Panthapath) loop
		dbms_output.put_line(cursor.ShowId || ' ' || cursor.ShowTime);
		end loop;
	else 
		dbms_output.put_line('Invalid Input.');
	end if;

	end Display_Show;
	/


create or replace procedure Display_Schedule(n in number)
	is
	begin
	if(n = 3) then
		for cursor in (select * from Schedule) loop
		dbms_output.put_line(cursor.V_ID || ' ' || cursor.H_ID || ' ' || cursor.S_ID || ' ' || cursor.M_ID || ' ' || cursor.ShowDate);
		end loop;
	elsif(n = 2) then
		for cursor in (select * from Schedule@Bashundhara) loop
		dbms_output.put_line(cursor.V_ID || ' ' || cursor.H_ID || ' ' || cursor.S_ID || ' ' || cursor.M_ID || ' ' || cursor.ShowDate);
		end loop;

	elsif(n = 1) then
		for cursor in (select * from Schedule@Panthapath) loop
		dbms_output.put_line(cursor.V_ID || ' ' || cursor.H_ID || ' ' || cursor.S_ID || ' ' || cursor.M_ID || ' ' || cursor.ShowDate);
		end loop;
	else 
		dbms_output.put_line('Invalid Input.');
	end if;

	end Display_Schedule;
	/

create or replace procedure Display_Seat(n in number)
	is
	begin
	if(n = 3) then
		for cursor in (select * from Seat) loop
		dbms_output.put_line(cursor.SeatID || ' ' || cursor.V_ID || ' ' || cursor.Position || ' ' || cursor.Price);
		end loop;
	elsif(n = 2) then
		for cursor in (select * from Seat@Bashundhara) loop
		dbms_output.put_line(cursor.SeatID || ' ' || cursor.V_ID || ' ' || cursor.Position || ' ' || cursor.Price);
		end loop;

	elsif(n = 1) then
		for cursor in (select * from Seat@Panthapath) loop
		dbms_output.put_line(cursor.SeatID || ' ' || cursor.V_ID || ' ' || cursor.Position || ' ' || cursor.Price);
		end loop;
	else 
		dbms_output.put_line('Invalid Input.');
	end if;

	end Display_Seat;
	/


create or replace procedure Display_Movies(n in number)
	is
	begin
	if(n = 3) then
		for cursor in (select * from Movies) loop
		dbms_output.put_line(cursor.MovieID || ' ' || cursor.Title || ' ' || cursor.Category || ' ' || cursor.ReleaseDate || ' ' || cursor.Language);
		end loop;
	elsif(n = 2) then
		for cursor in (select * from Movies@Bashundhara) loop
		dbms_output.put_line(cursor.MovieID || ' ' || cursor.Title || ' ' || cursor.Category || ' ' || cursor.ReleaseDate || ' ' || cursor.Language);
		end loop;

	elsif(n = 1) then
		for cursor in (select * from Movies@Panthapath) loop
		dbms_output.put_line(cursor.MovieID || ' ' || cursor.Title || ' ' || cursor.Category || ' ' || cursor.ReleaseDate || ' ' || cursor.Language);
		end loop;

	else 
		dbms_output.put_line('Invalid Input.');
	end if;

	end Display_Movies;
	/


create or replace procedure Buy_Tickets(n in number)
	is
	BuyTickets_VID number;
	BuyTickets_MID number;
	BuyTickets_SID number;
	BuyTickets_STID number;
	BuyTickets_HID number;
	BuyTickets_Date varchar2(20);

	TestB number;
	TestPanthapath number;

	begin

	BuyTickets_VID := n;
	BuyTickets_MID := 1;
	BuyTickets_SID := 1;
	BuyTickets_STID:= 1;
	BuyTickets_HID := 1;
	BuyTickets_Date := '10-oct-2019';

	if(n = 3) then
		Insert into Ticket(V_ID,H_ID,S_ID,ST_ID,M_ID,M_Date) values(BuyTickets_VID,BuyTickets_HID,BuyTickets_SID,BuyTickets_STID,BuyTickets_MID,BuyTickets_Date);
		commit;

	elsif(n = 2) then
		select count(ticketID) into TestB from Ticket @Bashundhara;
		Insert into Ticket@Bashundhara values(TestB + 1,BuyTickets_VID,BuyTickets_HID,BuyTickets_SID,BuyTickets_STID,BuyTickets_MID,BuyTickets_Date);
		commit;

	elsif(n = 1) then
		select count(ticketID) into TestPanthapath from Ticket @Panthapath;
		Insert into Ticket@Panthapath values(TestPanthapath + 1,BuyTickets_VID,BuyTickets_HID,BuyTickets_SID,BuyTickets_STID,BuyTickets_MID,BuyTickets_Date);
		commit;
	end if;

	end Buy_Tickets;
	/


create or replace procedure Display_Manager(n in number)
	is
	begin
	if(n = 3) then
		for cursor in (select * from Manager) loop
		dbms_output.put_line(cursor.ManagerID || ' ' || cursor.ManagerName || ' ' || cursor.ManagerContact);
		end loop;
	elsif(n = 2) then
		for cursor in (select * from Manager@Bashundhara) loop
		dbms_output.put_line(cursor.ManagerID || ' ' || cursor.ManagerName || ' ' || cursor.ManagerContact);
		end loop;
	elsif(n = 1) then
		for cursor in (select * from Manager@Panthapath) loop
		dbms_output.put_line(cursor.ManagerID || ' ' || cursor.ManagerName || ' ' || cursor.ManagerContact);
		end loop;
	else 
		dbms_output.put_line('Invalid Input.');
	end if;

	end Display_Manager;
	/

create or replace procedure Movie_Specific_Information(n in number)
	is

	show varchar2(100);
	hall varchar2(100);
	totSeats number;
	soldTickets number;
	availableTickets number;

	begin
	
		dbms_output.put_line('Schedule' || '    ' || 'Hall' || '               ' || 'Date' || '    ' || 'Available Tickets');
		dbms_output.put_line('______________________________________________________________________________');
		if(n = 3) then
			for cursor in (select * from TestView) loop
				select showTime into show from show where showId = (cursor.s_id);
				select hallName into hall from hall where hallId = (cursor.h_id);
				select totalSeats into totSeats from hall where hallId = (cursor.h_id);
				select count(ticketID) into soldTickets from Ticket where (v_id = n and s_id = cursor.s_id and m_date = cursor.showDate and h_id = cursor.h_id);
				availableTickets := totSeats - soldTickets;
				dbms_output.put_line(show || '     ' || hall || '      ' || cursor.showDate || '    ' || availableTickets);

			end loop;

		elsif(n = 2) then
            for cursor in (select * from TestViewBashundhara) loop
                select showTime into show from show@Bashundhara where showId = (cursor.s_id);
                select hallName into hall from hall@Bashundhara where hallId = (cursor.h_id);
                select totalSeats into totSeats from hall@Bashundhara where hallId = (cursor.h_id);
                select count(ticketID) into soldTickets from Ticket@Bashundhara where (v_id = n and s_id = cursor.s_id and m_date = cursor.showDate and h_id = cursor.h_id);
                availableTickets := totSeats - soldTickets;
                dbms_output.put_line(show || '     ' || hall || '      ' || cursor.showDate || '    ' || availableTickets);

            end loop;

        elsif(n = 1) then
            for cursor in (select * from TestViewPanthapath) loop
                select showTime into show from show@Panthapath where showId = (cursor.s_id);
                select hallName into hall from hall@Panthapath where hallId = (cursor.h_id);
                select totalSeats into totSeats from hall@Panthapath where hallId = (cursor.h_id);
                select count(ticketID) into soldTickets from Ticket@Panthapath where (v_id = n and s_id = cursor.s_id and m_date = cursor.showDate and h_id = cursor.h_id);
                availableTickets := totSeats - soldTickets;
                dbms_output.put_line(show || '     ' || hall || '      ' || cursor.showDate || '    ' || availableTickets);

            end loop;

		end if;
		dbms_output.put_line('______________________________________________________________________________');

	end Movie_Specific_Information;
	/
