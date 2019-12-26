Insert into Movies Values (1,'Joker','Thriller','04-oct-2019','English');
Insert into Movies Values (2,'Infinity War','Action','23-apr-2018','English');
Insert into Movies Values (3,'Spiderman','Adventure','26-jun-2019','English');
Insert into Movies Values (4,'Zombieland','Comedy','11-oct-2019','English');
Insert into Movies Values (5,'Terminator','Action','04-dec-2019','English');
Insert into Movies Values (6,'Frozen','Action','23-apr-2018','English');
Insert into Movies Values (7,'John Wick','Action','12-jun-2019','English');
Insert into Movies Values (8,'Shap Ludu','Thriller','13-oct-2019','English');
Insert into Movies Values (9,'Parineeta','Romance','14-oct-2019','English');
Insert into Movies Values (10,'Debi','Horror','15-apr-2018','English');


Insert into Customer Values(1,'Sifat Nabil','01949802548');
Insert into Customer Values(2,'Ahnuf Sabit','01949802548');
Insert into Customer Values(3,'Dipta Das','01949802548');

Insert into Venue Values(1,'Cineplex','Panthapath');
Insert into Venue Values(2,'Blockbuster','Bashundhara');

Insert into Manager Values(1,1,'Nusrat Hossain','01783611396');
Insert into Manager Values(2,1,'Shaon Mahbub','01735402305');

Insert into Hall Values(1,1,'Dream Screen','VIP',200);
Insert into Hall Values(2,1,'Screen Queen','Premium',250);
Insert into Hall Values(3,1,'Silver Screen','General',300);

Insert into Show Values(1,'10 AM');
Insert into Show Values(2,'1 PM');
Insert into Show Values(3,'3 PM');
Insert into Show Values(4,'6 PM');


Insert into Schedule Values(1,1,1,1,'10-oct-2019'); 
Insert into Schedule Values(1,3,3,1,'10-oct-2019');
Insert into Schedule Values(1,3,1,1,'10-oct-2019');
Insert into Schedule Values(1,2,1,1,'11-oct-2019'); 
Insert into Schedule Values(1,3,4,1,'11-oct-2019');
Insert into Schedule Values(1,3,1,1,'12-oct-2019');
Insert into Schedule Values(1,1,4,1,'12-oct-2019'); 
Insert into Schedule Values(1,2,1,1,'12-oct-2019');


Insert into Schedule Values(1,2,1,2,'10-oct-2019');
Insert into Schedule Values(1,2,2,2,'10-oct-2019'); 
Insert into Schedule Values(1,1,3,2,'10-oct-2019');
Insert into Schedule Values(1,1,1,2,'11-oct-2019');
Insert into Schedule Values(1,1,3,2,'11-oct-2019'); 


Insert into Schedule Values(1,3,3,3,'11-oct-2019');
Insert into Schedule Values(1,2,3,3,'11-oct-2019'); 
Insert into Schedule Values(1,1,1,3,'13-oct-2019');
Insert into Schedule Values(1,1,3,3,'13-oct-2019'); 


Insert into Schedule Values(1,3,3,4,'13-oct-2019');
Insert into Schedule Values(1,2,3,4,'13-oct-2019'); 
Insert into Schedule Values(1,1,1,4,'15-oct-2019');
Insert into Schedule Values(1,1,3,4,'15-oct-2019');


Insert into Schedule Values(1,3,3,5,'14-oct-2019');
Insert into Schedule Values(1,2,3,5,'14-oct-2019'); 
Insert into Schedule Values(1,1,1,5,'14-oct-2019');
Insert into Schedule Values(1,1,3,5,'14-oct-2019'); 



Insert into Seat Values(1,1,'Front',500);
Insert into Seat Values(2,1,'Middle',400);
Insert into Seat Values(3,1,'Back',350);



commit;