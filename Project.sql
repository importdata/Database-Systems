Create Table TVShow (
	SeriesName varchar(20) not null,
	Genre varchar(50),
	ReleaseYear int,
	Primary Key (SeriesName)
);

Create Table Movie (
	MovieName varchar(20),
	ReleaseYear int,
	Genre varchar(50),
	Duration int,
	Price decimal(9,2),
	Director varchar(20),
	Prequel varchar(20),
	Sequel varchar(20),
	Primary Key (MovieName),
	Foreign Key (Prequel) references Movie(MovieName)
	On Delete CASCADE
	On Update Cascade,
	Foreign Key (Sequel) references Movie(MovieName)
	On Delete CASCADE
	On Update Cascade
);

Create Table Seasons (
	SeasonNo int not Null,
	SeriesName varchar(20) not null,
	Primary Key (SeasonNo, SeriesName),
	Foreign Key (SeriesName) references TVShow(SeriesName)
	On Delete CASCADE
	On Update Cascade
);

Create Table Episodes (
	SeriesName varchar(20) not null,
	SeasonNo int not null,
	EpisodeNo int not null,
	Duration int,
	EpPrice Decimal(9,2),
	Primary Key (SeriesName, SeasonNo, EpisodeNo),
	Foreign Key (SeriesName) references TVShow(SeriesName)
	On Delete CASCADE
	On Update Cascade,
	Foreign Key (SeriesName, SeasonNo) references Seasons(SeriesName, SeasonNo)
	On Delete CASCADE
	On Update Cascade
);

Create Table Invoice (
	InvoiceNo int not Null,
	CustomerID char(4) not Null,
	InvoiceDate date,
	Primary Key (InvoiceNo, CustomerID),
	Foreign Key (CustomerID) references Customer(CustomerID)
	On Delete CASCADE
	On Update Cascade
);

Create Table InvoiceItem (
	InvoiceItemNo char(4) not null,
	InvoiceNo int not Null,
	CustomerID char(5) not Null,
	EpisodeNo int,
	SeasonNo int,
	SeriesName varchar(20),
	MovieName varchar(20),
	Primary Key (InvoiceItemNo, InvoiceNo, CustomerID),
	Foreign Key (InvoiceNo, CustomerID) references Invoice(InvoiceNo, CustomerID)
	On Delete CASCADE
	On Update Cascade,
	Foreign Key (EpisodeNo, SeasonNo, SeriesName) references Episodes(EpisodeNo, SeasonNo, SeriesName)
	On Delete CASCADE
	On Update Cascade,
	Foreign Key (MovieName) references Movie(MovieName)
	On Delete CASCADE
	On Update Cascade
);

Create Table BillingInfo (
	CreditCardNo char(16) not null,
	CustomerID char(5) not null,
	Street varchar(20) not Null,
	City varchar(20) not Null,
	State char(2) not Null,
	Country varchar(20) not Null,
	Zip varchar(10) not Null,
	Primary Key (CreditCardNo, CustomerID),
	Foreign Key (CustomerID) references Customer(CustomerID)
	On Delete CASCADE
	On Update Cascade,
	Foreign Key (CreditCardNo) references CCInfo(CreditCardNo)
	On Delete CASCADE
	On Update Cascade
);

Create Table Customer (
	CustomerID char(5) not Null,
	FName varchar(15) not Null,
	MInit char(1),
	LName varchar(15) not Null,
	Phone char(10) not Null,
	Email varchar(30) not Null,
	Primary Key (CustomerID)
);

Create Table CCInfo (
	CreditCardNo char(16) not Null,
	Primary Key (CreditCardNo)
);

Create Table RecommendedTV (
	CustomerID char(5) not null,
	SeriesName varchar(20),
	Primary Key (CustomerID, SeriesName),
	Foreign Key (CustomerID) references Customer(CustomerID)
	On Delete CASCADE
	On Update Cascade,
	Foreign Key (SeriesName) references TVShow(SeriesName)
	On Delete CASCADE
	On Update Cascade
);

Create Table RecommendedMovie (
	CustomerID char(5) not null,
	MovieName varchar(20),
	Primary Key (CustomerID, MovieName),
	Foreign Key (CustomerID) references Customer(CustomerID)
	On Delete CASCADE
	On Update Cascade,
	Foreign Key (MovieName) references Movie(MovieName)
	On Delete CASCADE
	On Update Cascade
);

