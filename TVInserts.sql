Insert Into TVShow values ('Game of Thrones', 'Action, Adventure, Drama', 2011);
Insert Into TVShow values ('Black Mirror', 'Drama, Sci-Fi, Thriller', 2011);
Insert Into TVShow values ('Stranger Things', 'Drama, Fantasy, Horror', 2016);

Insert Into Movie values ('The Avengers', 2012, 'Action, Adventure, Sci-Fi', 143, 14.99, 'Joss Whedon', NULL, NULL);
Insert Into Movie values ('Avengers: Age of Ultron', 2015, 'Action, Adventure, Sci-Fi', 141, 14.99, 'Joss Whedon', 'The Avengers', NULL);
Update Movie 
Set Sequel = 'Avengers: Age of Ultron'
Where Sequel is null;
Insert Into Movie values ('Avengers: Infinity War', 2018, 'Action, Adventure, Sci-Fi', 149, 15.99, 'Anthony Russo, Joe Russo', 'Avengers: Age of Ultron', NULL);
Update Movie 
Set Sequel = 'Avengers: Infinity War'
Where Sequel is null;
Insert Into Movie values ('Avengers: Endgame', 2019, 'Action, Adventure, Sci-Fi', 181, 16.99, 'Anthony Russo, Joe Russo', 'Avengers: Infinity War', NULL);
Insert Into Movie values ('Godzilla', 2014, 'Action, Adventure, Sci-Fi', 123, 11.99, 'Gareth Edwards', NULL, NULL);
Insert Into Movie values ('Godzilla: King of the Monsters', 2019, 'Action, Adventure, Sci-Fi', 132, 12.99, 'Michael Dougherty', 'Godzilla', NULL);
Update Movie 
Set Sequel = 'Godzilla: King of the Monsters'
Where Sequel is null;
Insert Into Movie values ('John Wick', 2014, 'Action, Crime, Thriller', 101, 13.99, 'Chad Stahelski, David Leitch', NULL, NULL);
Insert Into Movie values ('John Wick: Chapter 2', 2017, 'Action, Crime, Thriller', 122, 14.99, 'Chad Stahelski', 'John Wick', NULL);
Update Movie 
Set Sequel = 'John Wick: Chapter 2'
Where Sequel is null;
Insert Into Movie values ('John Wick: Chapter 3 - Parabellum', 2019, 'Action, Crime, Thriller', 131, 15.99, 'Chad Stahelski', 'John Wick: Chapter 2', NULL);
Insert Into Movie values ('Aladdin', 2019, 'Adventure, Comedy, Family', 128, 10.99, 'Guy Ritchie', NULL, NULL);

Insert Into Seasons values (1, 'Game of Thrones');
Insert Into Seasons values (2, 'Game of Thrones');
Insert Into Seasons values (3, 'Game of Thrones');
Insert Into Seasons values (4, 'Game of Thrones');
Insert Into Seasons values (5, 'Game of Thrones');
Insert Into Seasons values (6, 'Game of Thrones');
Insert Into Seasons values (7, 'Game of Thrones');
Insert Into Seasons values (8, 'Game of Thrones');
Insert Into Seasons values (1, 'Black Mirror');
Insert Into Seasons values (2, 'Black Mirror');
Insert Into Seasons values (3, 'Black Mirror');
Insert Into Seasons values (4, 'Black Mirror');
Insert Into Seasons values (5, 'Black Mirror');
Insert Into Seasons values (1, 'Stranger Things');
Insert Into Seasons values (2, 'Stranger Things');

Insert Into Episodes values ('Game of Thrones', 1, 1, 62, 2.99);
Insert Into Episodes values ('Game of Thrones', 1, 2, 56, 2.99);
Insert Into Episodes values ('Game of Thrones', 1, 3, 58, 2.99);
Insert Into Episodes values ('Game of Thrones', 1, 4, 56, 2.99);
Insert Into Episodes values ('Game of Thrones', 1, 5, 55, 2.99);
Insert Into Episodes values ('Game of Thrones', 1, 6, 53, 2.99);
Insert Into Episodes values ('Game of Thrones', 1, 7, 58, 2.99);
Insert Into Episodes values ('Game of Thrones', 1, 8, 59, 2.99);
Insert Into Episodes values ('Game of Thrones', 1, 9, 57, 2.99);
Insert Into Episodes values ('Game of Thrones', 1, 10, 53, 2.99);
Insert Into Episodes values ('Game of Thrones', 2, 1, 53, 2.99);
Insert Into Episodes values ('Game of Thrones', 2, 2, 54, 2.99);
Insert Into Episodes values ('Game of Thrones', 2, 3, 53, 2.99);
Insert Into Episodes values ('Game of Thrones', 2, 4, 51, 2.99);
Insert Into Episodes values ('Game of Thrones', 2, 5, 55, 2.99);
Insert Into Episodes values ('Game of Thrones', 2, 6, 54, 2.99);
Insert Into Episodes values ('Game of Thrones', 2, 7, 56, 2.99);
Insert Into Episodes values ('Game of Thrones', 2, 8, 54, 2.99);
Insert Into Episodes values ('Game of Thrones', 2, 9, 55, 2.99);
Insert Into Episodes values ('Game of Thrones', 2, 10, 64, 2.99);
Insert Into Episodes values ('Game of Thrones', 3, 1, 55, 2.99);
Insert Into Episodes values ('Game of Thrones', 3, 2, 56, 2.99);
Insert Into Episodes values ('Game of Thrones', 3, 3, 56, 2.99);
Insert Into Episodes values ('Game of Thrones', 3, 4, 53, 2.99);
Insert Into Episodes values ('Game of Thrones', 3, 5, 57, 2.99);
Insert Into Episodes values ('Game of Thrones', 3, 6, 53, 2.99);
Insert Into Episodes values ('Game of Thrones', 3, 7, 58, 2.99);
Insert Into Episodes values ('Game of Thrones', 3, 8, 56, 2.99);
Insert Into Episodes values ('Game of Thrones', 3, 9, 51, 2.99);
Insert Into Episodes values ('Game of Thrones', 3, 10, 63, 2.99);
Insert Into Episodes values ('Game of Thrones', 4, 1, 58, 2.99);
Insert Into Episodes values ('Game of Thrones', 4, 2, 52, 2.99);
Insert Into Episodes values ('Game of Thrones', 4, 3, 57, 2.99);
Insert Into Episodes values ('Game of Thrones', 4, 4, 55, 2.99);
Insert Into Episodes values ('Game of Thrones', 4, 5, 53, 2.99);
Insert Into Episodes values ('Game of Thrones', 4, 6, 51, 2.99);
Insert Into Episodes values ('Game of Thrones', 4, 7, 51, 2.99);
Insert Into Episodes values ('Game of Thrones', 4, 8, 52, 2.99);
Insert Into Episodes values ('Game of Thrones', 4, 9, 51, 2.99);
Insert Into Episodes values ('Game of Thrones', 4, 10, 65, 2.99);
Insert Into Episodes values ('Game of Thrones', 5, 1, 53, 2.99);
Insert Into Episodes values ('Game of Thrones', 5, 2, 56, 2.99);
Insert Into Episodes values ('Game of Thrones', 5, 3, 60, 2.99);
Insert Into Episodes values ('Game of Thrones', 5, 4, 51, 2.99);
Insert Into Episodes values ('Game of Thrones', 5, 5, 57, 2.99);
Insert Into Episodes values ('Game of Thrones', 5, 6, 54, 2.99);
Insert Into Episodes values ('Game of Thrones', 5, 7, 59, 2.99);
Insert Into Episodes values ('Game of Thrones', 5, 8, 61, 2.99);
Insert Into Episodes values ('Game of Thrones', 5, 9, 52, 2.99);
Insert Into Episodes values ('Game of Thrones', 5, 10, 60, 2.99);
Insert Into Episodes values ('Game of Thrones', 6, 1, 50, 2.99);
Insert Into Episodes values ('Game of Thrones', 6, 2, 54, 2.99);
Insert Into Episodes values ('Game of Thrones', 6, 3, 52, 2.99);
Insert Into Episodes values ('Game of Thrones', 6, 4, 59, 2.99);
Insert Into Episodes values ('Game of Thrones', 6, 5, 57, 2.99);
Insert Into Episodes values ('Game of Thrones', 6, 6, 52, 2.99);
Insert Into Episodes values ('Game of Thrones', 6, 7, 51, 2.99);
Insert Into Episodes values ('Game of Thrones', 6, 8, 59, 2.99);
Insert Into Episodes values ('Game of Thrones', 6, 9, 60, 2.99);
Insert Into Episodes values ('Game of Thrones', 6, 10, 68, 2.99);
Insert Into Episodes values ('Game of Thrones', 7, 1, 59, 2.99);
Insert Into Episodes values ('Game of Thrones', 7, 2, 59, 2.99);
Insert Into Episodes values ('Game of Thrones', 7, 3, 63, 2.99);
Insert Into Episodes values ('Game of Thrones', 7, 4, 50, 2.99);
Insert Into Episodes values ('Game of Thrones', 7, 5, 59, 2.99);
Insert Into Episodes values ('Game of Thrones', 7, 6, 70, 2.99);
Insert Into Episodes values ('Game of Thrones', 7, 7, 80, 2.99);
Insert Into Episodes values ('Game of Thrones', 8, 1, 54, 2.99);
Insert Into Episodes values ('Game of Thrones', 8, 2, 58, 2.99);
Insert Into Episodes values ('Game of Thrones', 8, 3, 82, 2.99);
Insert Into Episodes values ('Game of Thrones', 8, 4, 78, 2.99);
Insert Into Episodes values ('Game of Thrones', 8, 5, 78, 2.99);
Insert Into Episodes values ('Game of Thrones', 8, 6, 80, 2.99);

Insert Into Episodes values ('Black Mirror', 1, 1, 44, 1.69);
Insert Into Episodes values ('Black Mirror', 1, 2, 62, 1.69);
Insert Into Episodes values ('Black Mirror', 1, 3, 49, 1.69);
Insert Into Episodes values ('Black Mirror', 2, 1, 48, 1.69);
Insert Into Episodes values ('Black Mirror', 2, 2, 42, 1.69);
Insert Into Episodes values ('Black Mirror', 2, 3, 43, 1.69);
Insert Into Episodes values ('Black Mirror', 2, 4, 73, 1.69);
Insert Into Episodes values ('Black Mirror', 3, 1, 63, 1.69);
Insert Into Episodes values ('Black Mirror', 3, 2, 57, 1.69);
Insert Into Episodes values ('Black Mirror', 3, 3, 52, 1.69);
Insert Into Episodes values ('Black Mirror', 3, 4, 61, 1.69);
Insert Into Episodes values ('Black Mirror', 3, 5, 60, 1.69);
Insert Into Episodes values ('Black Mirror', 3, 6, 89, 1.69);
Insert Into Episodes values ('Black Mirror', 4, 1, 76, 1.69);
Insert Into Episodes values ('Black Mirror', 4, 2, 52, 1.69);
Insert Into Episodes values ('Black Mirror', 4, 3, 59, 1.69);
Insert Into Episodes values ('Black Mirror', 4, 4, 51, 1.69);
Insert Into Episodes values ('Black Mirror', 4, 5, 41, 1.69);
Insert Into Episodes values ('Black Mirror', 4, 6, 69, 1.69);
Insert Into Episodes values ('Black Mirror', 5, 1, 61, 1.69);
Insert Into Episodes values ('Black Mirror', 5, 2, 70, 1.69);
Insert Into Episodes values ('Black Mirror', 5, 3, 67, 1.69);

Insert Into Episodes values ('Stranger Things', 1, 1, 47, 1.99);
Insert Into Episodes values ('Stranger Things', 1, 2, 55, 1.99);
Insert Into Episodes values ('Stranger Things', 1, 3, 51, 1.99);
Insert Into Episodes values ('Stranger Things', 1, 4, 49, 1.99);
Insert Into Episodes values ('Stranger Things', 1, 5, 52, 1.99);
Insert Into Episodes values ('Stranger Things', 1, 6, 46, 1.99);
Insert Into Episodes values ('Stranger Things', 1, 7, 41, 1.99);
Insert Into Episodes values ('Stranger Things', 1, 8, 54, 1.99);
Insert Into Episodes values ('Stranger Things', 2, 1, 48, 1.99);
Insert Into Episodes values ('Stranger Things', 2, 2, 56, 1.99);
Insert Into Episodes values ('Stranger Things', 2, 3, 51, 1.99);
Insert Into Episodes values ('Stranger Things', 2, 4, 46, 1.99);
Insert Into Episodes values ('Stranger Things', 2, 5, 58, 1.99);
Insert Into Episodes values ('Stranger Things', 2, 6, 51, 1.99);
Insert Into Episodes values ('Stranger Things', 2, 7, 45, 1.99);
Insert Into Episodes values ('Stranger Things', 2, 8, 47, 1.99);
Insert Into Episodes values ('Stranger Things', 2, 9, 62, 1.99);

Insert Into Customer values ('00001', 'Kevin', NULL, 'Nguyen', '1234567890', 'kevin.ngu@mail.com');
Insert Into Customer values ('00002', 'Jaemin', NULL, 'Lee', '2345678901', 'jaemin.lee@mail.com');
Insert Into Customer values ('00003', 'Alex', NULL, 'Armstrong', '3456789012', 'alex.arm@mail.com');
Insert Into Customer values ('00004', 'Willie', NULL, 'Ortiz', '4567890123', 'willie.ort@mail.com');
Insert Into Customer values ('00005', 'Javier', NULL, 'Carmona', '5678901234', 'javier.car@mail.com');

Insert Into BillingInfo values ('1234567890123456', '00001', '731 Fondren', 'Houston', 'TX', 'USA', '733697');
Insert Into BillingInfo values ('5678567890123456', '00002', '638 Voss', 'Houston', 'TX', 'USA', '722697');
Insert Into BillingInfo values ('9012567890123456', '00003', '3321 Castle', 'Spring', 'TX', 'USA', '733517');
Insert Into BillingInfo values ('7890567890123456', '00004', '980 Dallas', 'Houston', 'TX', 'USA', '733689');
Insert Into BillingInfo values ('1234567890121234', '00005', '4521 Lemon', 'Dallas', 'TX', 'USA', '730097');

Insert Into Invoice values ('001', '00001', '2019-02-05');
Insert Into Invoice values ('002', '00002', '2019-05-21');

Insert Into InvoiceItem values ('0001', '001', '00001', 1, 1, 'Game of Thrones', NULL);
Insert Into InvoiceItem values ('0002', '001', '00001', 1, 2, 'Game of Thrones', NULL);
Insert Into InvoiceItem values ('0003', '001', '00001', 1, 3, 'Game of Thrones', NULL);
Insert Into InvoiceItem values ('0004', '001', '00001', 1, 4, 'Game of Thrones', NULL);
Insert Into InvoiceItem values ('0005', '001', '00001', 1, 5, 'Game of Thrones', NULL);
Insert Into InvoiceItem values ('0006', '001', '00001', 1, 6, 'Game of Thrones', NULL);
Insert Into InvoiceItem values ('0007', '001', '00001', 1, 7, 'Game of Thrones', NULL);
Insert Into InvoiceItem values ('0008', '001', '00001', 1, 8, 'Game of Thrones', NULL);
Insert Into InvoiceItem values ('0009', '002', '00002', NULL, NULL, NULL, 'The Avengers');

Insert Into CCInfo values ('1234567890123456');
Insert Into CCInfo values ('5678567890123456');
Insert Into CCInfo values ('9012567890123456');
Insert Into CCInfo values ('7890567890123456');
Insert Into CCInfo values ('1234567890121234');

Insert Into RecommendedMovie values ('00001', 'Avengers: Age of Ultron');
Insert Into RecommendedTV values ('00002', 'Black Mirror');






