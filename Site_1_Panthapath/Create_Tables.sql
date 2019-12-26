drop table Movies cascade constraints;
drop table Customer cascade constraints;
drop table Venue cascade constraints;
drop table Manager cascade constraints;
drop table Show cascade constraints;
drop table Schedule cascade constraints;
drop table Seat cascade constraints;
drop table Ticket cascade constraints;
drop table Payment cascade constraints;
drop table Hall cascade constraints;

drop sequence ticket_sequence;

create table Movies 
	(
		MovieID number(20),
		Title varchar2(40),
		Category varchar2(20),
		ReleaseDate date,
		Language varchar2(10),
		primary key (MovieID)
	);

create table Customer
	(
		CustomerID number(20),
		CustomerName varchar2(20),
		CustomerContact varchar2(20),
		primary key (CustomerID)
	);

create table Venue
	(
		VenueID number(20),
		VenueName varchar2(20),
		Location varchar2(20),
		primary key(VenueID)
	);

create table Manager
	(
		ManagerID number(20),
		V_ID number(20),
		ManagerName varchar2(20),
		ManagerContact varchar2(20),
		primary key(ManagerID),
		foreign key (V_ID) references Venue(VenueID)
	);

create table Hall
	(
		HallID number(20),
		V_ID number(20),
		HallName varchar2(20),
		Category varchar2(20),
		TotalSeats number(20),
		primary key(HallID),
		foreign key(V_ID) references Venue(VenueID)
	);

create table Show
	(
		ShowID number(20),
		ShowTime varchar2(20),
		primary key(ShowID)
	);

create table Schedule
	(
		V_ID number(20),
		H_ID number(20),
		S_ID number(20),
		M_ID number(20),
		ShowDate date,
		primary key (S_ID,V_ID,H_ID,ShowDate),
		foreign key (S_ID) references Show(ShowID),
		foreign key (M_ID) references Movies(MovieID),
		foreign key (V_ID) references Venue(VenueID),
		foreign key (H_ID) references Hall(HallID)
	);

create table Seat
	(
		SeatID number(20),
		V_ID number(20),
		Position varchar2(20),
		Price number(20),
		primary key(SeatID),
		foreign key(V_ID) references Venue(VenueID)
	);

create table Ticket
	(
		TicketID number(20),
		V_ID number(20),
		H_ID number(20),
		S_ID number(20),
		ST_ID number(20),
		M_ID number(20),
		M_Date varchar2(20),
		primary key(TicketID),
		foreign key(M_ID) references Movies(MovieID),
		foreign key(S_ID) references Show(ShowID),
		foreign key(H_ID) references Hall(HallID),
		foreign key(ST_ID) references Seat(SeatID),
		foreign key(V_ID) references Venue(VenueID)
	);

create sequence ticket_sequence
	start with 1
	increment by 1
	minvalue 1
	maxvalue 1000;

create table Payment
	(
		PaymentID number(20),
		C_ID number(20),
		T_ID number(20),
		V_ID number(20),
		Amount number(20),
		PaymentDate date,
		primary key(PaymentID),
		foreign key(C_ID) references Customer(CustomerID),
		foreign key(T_ID) references Ticket(TicketID),
		foreign key(V_ID) references Venue(VenueID)
	);



