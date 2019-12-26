Insert into Movies Values (1,'Gemini Man','Action','16-oct-2019','English');
Insert into Movies Values (2,'Ad Astra','Science Fiction','16-oct-2019','English');
Insert into Movies Values (3,'It:Chapter 2','Horror','26-aug-2019','English');
Insert into Movies Values (4,'Shahensha','Comedy','16-oct-2019','Bangla');
Insert into Movies Values (5,'Joker','Thriller','16-oct-2019','English');
Insert into Movies Values (6,'Ready or Not','Horror','26-aug-2019','English');
Insert into Movies Values (7,'Gumnami','Thriller','16-oct-2019','Bangla');
Insert into Movies Values (8,'Maleficent','Fantasy','16-oct-2019','English');
Insert into Movies Values (9,'Password','Action','26-aug-2019','Bangla');
Insert into Movies Values (10,'Shap Ludu','Thriller','16-oct-2019','Bangla');


Insert into Customer Values(1,'Tahmeed Asasad','01929102548');
Insert into Customer Values(2,'Onim Chowdhury','01749807949');
Insert into Customer Values(3,'Saad Chowdhury','01539502542');

Insert into Venue Values(1,'Cineplex','Panthapath');
Insert into Venue Values(2,'Blockbuster','Dhanmondi');

Insert into Manager Values(1,2,'Ishtiak Ahmed','01783611396');
Insert into Manager Values(2,2,'Eimo Hoque','01735402305');

Insert into Hall Values(1,2,'Dream Screen','VIP',200);
Insert into Hall Values(2,2,'Screen Queen','Premium',250);
Insert into Hall Values(3,2,'Silver Screen','General',300);

Insert into Show Values(1,'9 AM');
Insert into Show Values(2,'3 PM');
Insert into Show Values(3,'6 PM');


Insert into Schedule Values(2,1,1,1,'10-oct-2019');
Insert into Schedule Values(2,2,2,1,'10-oct-2019');
Insert into Schedule Values(2,3,3,1,'10-oct-2019');
Insert into Schedule Values(2,1,2,1,'11-oct-2019');
Insert into Schedule Values(2,2,3,1,'11-oct-2019');
Insert into Schedule Values(2,3,1,1,'11-oct-2019');

Insert into Schedule Values(2,3,2,2,'10-oct-2019');

Insert into Schedule Values(2,1,2,2,'10-oct-2019');
Insert into Schedule Values(2,1,1,2,'12-oct-2019');
Insert into Schedule Values(2,2,1,2,'12-oct-2019');

Insert into Schedule Values(2,3,1,3,'12-oct-2019');
Insert into Schedule Values(2,1,1,3,'11-oct-2019');
Insert into Schedule Values(2,2,1,3,'10-oct-2019');
Insert into Schedule Values(2,3,1,3,'13-oct-2019');

Insert into Schedule Values(2,1,1,4,'14-oct-2019');
Insert into Schedule Values(2,2,1,4,'14-oct-2019');
Insert into Schedule Values(2,3,1,4,'14-oct-2019');



Insert into Seat Values(1,2,'Front',500);
Insert into Seat Values(2,2,'Middle',400);
Insert into Seat Values(3,2,'Back',350);


commit;


