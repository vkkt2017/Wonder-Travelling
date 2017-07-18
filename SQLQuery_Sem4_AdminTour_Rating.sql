create database PJSEM4_Sketching
go

use PJSEM4_Sketching
go

create table Tour_Category
(
	TourCGID varchar(30) primary key,
	TourCGTitle nvarchar(50),
	Destination nvarchar(50),
	DurationFrom smallint,
	DurationTo smallint,
	PriceFrom float,
	PriceTo float,
	Vehicles nvarchar(100),
	[Status] varchar(20) check([Status] in ('Activating', 'Disable')) 
)
go

create table Tours
(
	TourID varchar(30) primary key,
	TourTitle nvarchar(70),
	TourCGID varchar(30) not null foreign key references Tour_Category(TourCGID)
)
go

create table schedule
(
	ScheduleID varchar(30) primary key,
	Title nvarchar(100),
	Content nvarchar (max),
	[Image] varchar(100)
)
go

-- Fix 'Schedule' to 'ScheduleID' varchar(100)
-- Fix 'EnventourPrice' to 'EvenTourPrice'

create table TourDetail
(
	TourDTID varchar(30) primary key,
	TourID varchar(30) not null foreign key references Tours(TourID),
	EvenTourPrice float,
	OddTourPrice float,
	DepartureDate nvarchar(100),
	HotelRank tinyint check(HotelRank between 2 and 5),
	DeparturePoint nvarchar(50),
	Destination nvarchar(50),
	Vehicle nvarchar(50),
	Duration tinyint,
	ScheduleID varchar(30) not null foreign key references schedule(ScheduleID),
	MaximumTicket tinyint,
	[Status] varchar(30) check([Status] in('Activating', 'Disable')) default 'Activating'
)
go

create table Customers
(
	CustomerID varchar(30) primary key,
	CustomerName nvarchar(50),
	Phone varchar(30),
	Email varchar(50) 
)
go

-- Them cot DepartureDate datetime
create table SmallOddReserveTour
(
	SmallORTID varchar(30) primary key,
	CustomerID varchar(30) not null foreign key references Customers(CustomerID),
	ReserveDate datetime,
	DepartureDate datetime,
	IsKid tinyint,
	IsBaby tinyint default 0,
	NumberOfPeople tinyint,
	TourID varchar(30) not null foreign key references Tours(TourID),
	[Status] nvarchar(100)
)
go

create table OddReserveTour
(
	OddRTID varchar(30) primary key,
	TourID varchar(30) not null foreign key references Tours(TourID),
	CustomerID varchar(30) not null foreign key references Customers(CustomerID),
	SmallORTID varchar(30) not null foreign key references SmallOddReserveTour(SmallORTID),
	DepartureDate datetime,
	IsKid tinyint,
	IsBaby tinyint,
	NumberOfPeople tinyint,
	[Status] varchar(100)
)
go

create table EvenReserveTour
(
	EvenRTID varchar(30) primary key,
	TourID varchar(30) not null foreign key references Tours(TourID),
	CustomerID varchar(30) not null foreign key references Customers(CustomerID),
	ReserveDate Datetime,
	DepartureDate datetime,
	IsKid tinyint,
	IsBaby tinyint,
	NumberOfPeople tinyint,
	[Status] varchar(100)
)
go


-- Sua Cot TourReseredID thanh ReservedTourID va Them foreign key den bang Tours(TourID)
-- Add Another Column Name It 'Status' With value would be either 'Valid' or 'Invalid'
create table RatingTour
(
	RatingID varchar(30) primary key,
	ReservedTourID varchar(30) not null foreign key references Tours(TourID),
	CustomerID varchar(30) not null foreign key references Customers(CustomerID),
	Title nvarchar(100),
	[Description] nvarchar(max),
	[Status] varchar(20) check([Status in('Valid', 'Invalid')]) default 'Valid',
	StarsRated float
)
go

