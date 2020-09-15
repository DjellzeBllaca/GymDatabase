
CREATE TABLE [dbo].[Clients](
	[Client_Id] [int] NOT NULL ,
	[FirstName] [nvarchar](25) NOT NULL,
	[LastName] [nvarchar](25) NOT NULL,
	[Birthdate] [date] NOT NULL,
	[Gender] [nchar](1) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](15) NOT NULL,
	ZipCode int,
	[Phone] [nvarchar](25) NOT NULL,
	[Instructor_Id] [int] NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Client_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Company](
	[Company_Id] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](60) NOT NULL,
	[City][nvarchar](15) NOT NULL,
	[Phone] [nvarchar](24) NOT NULL,
	[Machine_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Company_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Employees](
	[Emp_id] [int] NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
	[Birthdate] [date] NOT NULL,
	[JobTittle] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](60) NOT NULL,
	[City] [nvarchar](15) NOT NULL,
	[Phone] [nvarchar](24) NOT NULL,
	[Company_Id] [int] NOT NULL,
	[Manager_Id] [int]	NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[Exercises](
	[Client_Id] [int] NOT NULL,
	[Machine_Id] [int] NOT NULL,
	[BodyPart] [nvarchar](15) NULL,
	[Duration] int ,
PRIMARY KEY CLUSTERED 
(
	[Client_Id],[] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Instructors](
	[Instructor_Id] [int] NOT NULL,
	[Company_Id] [int] NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[Gender] [nchar](1) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](20) NOT NULL,
	[ZipCode] [nvarchar](15) ,
	[Phone] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Instructors] PRIMARY KEY CLUSTERED 
(
	[Instructor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Machines](
	[Machine_Id] [int] NOT NULL,
	[Type] [nvarchar](25) NOT NULL,
	[Condition] [nvarchar](20) NULL,
	[TimePerPerson] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Machine_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Membership](
	[Client_Id] [int] NOT NULL,
	[Membership_Id] [int] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
 CONSTRAINT [PK_Membership] PRIMARY KEY CLUSTERED 
(
	[Client_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[MembershipType](
	[Membership_Id] [int] NOT NULL,
	[Type] [nvarchar](15) NULL,
	[Price] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[Membership_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

INSERT INTO Clients VALUES(1, 'Altin', 'Morina','1999-12-05', 'M','Velani, Rr. Shaip Kamberi', 'Prishtinë',10000, '+38344949897', 1)
INSERT INTO Clients VALUES(2, 'Zana', 'Gashi', '1987-09-24', 'F' ,'Dardania 1, Rr. Fatos Limani', 'Gjilan',60000, '+38345149237', 4)
INSERT INTO Clients VALUES(3, 'Bardha', 'Zogiani','1997-02-13', 'F','Ulpianë, Rr. Henry Dinant', 'Prishtinë',10000, '+38345176295', 2)
INSERT INTO Clients VALUES(4, 'Kastriot', 'Ramadani','1985-06-24', 'M','Iliria', 'Ferizaj', 70000,'+37745327923', 7)
INSERT INTO Clients VALUES(5, 'Festim', 'Hoda','1991-12-03', 'M', 'Bazhdarhane, Rr. Enver Haradinaj', 'Prizren', 20000,'+37744367981', 6)
INSERT INTO Clients VALUES(6, 'Suzana', 'Begolli','1983-11-09', 'F','Tavnik', 'Mitrovicë', 40000,'+38344168351', 2)
INSERT INTO Clients VALUES(7, 'Qëndresa', 'Arifaj','1979-03-21', 'F','Rrokaqielli, Rr. Ramiz Sadiku', 'Pejë', 30000,'+38345149637', 3)
INSERT INTO Clients VALUES(8, 'Gentrit', 'Selmani','1997-01-22', 'M','Dardania I','Gjilan',60000, '0456735672', 5)
INSERT INTO Clients VALUES(9, 'Redon', 'Kasumi','1992-04-12', 'M','Velani', 'Prishtinë', 10000, '+38344843720', 2)
INSERT INTO Clients VALUES(10, 'Odesa', 'Topojani','1984-07-18', 'F','Laxhja e Re', 'Lipjan',14000, '+38344823453', 3)
select * from Clients

INSERT INTO Instructors values(1,'Fabian ','Rrecaj','M', 'Dardani','Prishtine',10000,+3864457839)
INSERT INTO Instructors values(2,'Marigona','Shaqiri','F', 'Ulpiane','Prishtine',10000, +38649029384)
INSERT INTO Instructors values(3,'Valon','Selimi','M', 'Ulpiane','Prishtine',10000, +38644223366)
INSERT INTO Instructors values(4,'Doriona','Veliu','F', 'Dheu i Bardhe','Gjilan', 60000, +38644564738)
INSERT INTO Instructors values(5,'Kushtrim','Bytyqi','M', 'Dardania I','Gjilan',60000, +38645765091)
INSERT INTO Instructors values(6,'Edona','Luta','F', 'Bregu i Diellit','Prishtine',10000, +38644362794)
INSERT INTO Instructors values(7,'Ari','Godanci','M', 'Kalabria','Fushe Kosove', 12000, +38644113452)


select * from Machines
INSERT INTO Machines VALUES (1, 'Hyper Extension Bench', 'Good Condition', 30,'Move your body up and down. Weights can be held to increase the diffculty')
INSERT INTO Machines VALUES (2, 'Stability Ball', 'Good Condition', 60,'A good all around exercise tool')
INSERT INTO Machines VALUES (3, 'Pec Deck Machine', 'Good Condition', 30,'An assisted exercise that isolates the chest')
INSERT INTO Machines VALUES (4, 'Pull Up Bar', 'Good Condition', 20,'Pull yoursel up so your chin is above the bar')
INSERT INTO Machines VALUES (5, 'Squat Rack', 'Good Condition', 30,'This station may be a bit advanced but is imperative to any serious strength training routing')
INSERT INTO Machines VALUES (6, 'Banch Press', 'Good Condition', 30,'Used for chest Building, ')


INSERT INTO Exercises VALUES(1,6,'Upper Back,Shoulders,Abs,Biceps,Triceps',25)
INSERT INTO Exercises VALUES(1,4,'Upper Back,Shoulders,Abs,Biceps,Triceps',20)
INSERT INTO Exercises VALUES(2,2,'Anything',40)
INSERT INTO Exercises VALUES(2,5,'Everything',30)
INSERT INTO Exercises VALUES(3,6,'Upper Back,Shoulders,Abs,Biceps,Triceps',25)
INSERT INTO Exercises VALUES(4,3,'Chest',20)
INSERT INTO Exercises VALUES(5,1,'Lower Back,glutes',20)
INSERT INTO Exercises VALUES(6,2,'Anything',30)
INSERT INTO Exercises VALUES(8,1,'Everything',25)
INSERT INTO Exercises VALUES(8,6,'Upper Back,Shoulders,Abs,Biceps,Triceps',30)
INSERT INTO Exercises VALUES(7,1,'Everything',30)
INSERT INTO Exercises VALUES(9,1,'Chest',20)
INSERT INTO Exercises VALUES(10,1,'Everything',30)

INSERT INTO MembershipType VALUES (1,'Monthly', 15.00)
INSERT INTO MembershipType VALUES (2,'Annual', 150.00)
INSERT INTO MembershipType  VALUES (3,'Weekly', 5.00)
INSERT INTO MembershipType  VALUES (4,'Half-year', 65.00)

INSERT INTO Membership VALUES(1,1,'2019-05-23','2019-06-23')
INSERT INTO Membership VALUES(2,1,'2019-05-12','2019-06-12')
INSERT INTO Membership VALUES(3,2,'2018-09-07','2019-09-07')
INSERT INTO Membership VALUES(4,3,'2019-06-13','2019-06-20')
INSERT INTO Membership VALUES(5,4,'2019-02-10','2019-08-10')
INSERT INTO Membership VALUES(6,4,'2019-03-21','2019-03-21')
INSERT INTO Membership VALUES(7,2,'2018-03-12','2018-03-12')
INSERT INTO Membership VALUES(8,4,'2018-05-10','2019-11-10')
INSERT INTO Membership VALUES(9,3,'2019-03-21','2019-03-28')
INSERT INTO Membership VALUES(10,2,'2018-10-01','2018-10-01')

INSERT INTO Rooms VALUES(1, 1, 'Peshengritje')
INSERT INTO Rooms VALUES(2, 1, 'Vrapim')
INSERT INTO Rooms VALUES(3, 2, 'YOGA')
INSERT INTO Rooms VALUES(4, 2, 'Tjera')
INSERT INTO Rooms VALUES(5, 3, 'Relaks')
INSERT INTO Rooms VALUES(6, 5, 'Gjera personale')
INSERT INTO Rooms VALUES(7, 6, 'Trajneri')

select * from [dbo].[Clients]
select * from [dbo].[Exercises]
select * from [dbo].[Instructors]
select * from [dbo].[Machines]
select * from [dbo].[MembershipType]
select * from [dbo].[Membership]
select * from [dbo].[Rooms]
