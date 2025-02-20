USE [Medicine]
GO
/****** Object:  Table [dbo].[Disease]    Script Date: 19.06.2023 19:20:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disease](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Disease] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 19.06.2023 19:20:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameF] [nvarchar](200) NOT NULL,
	[Speciality] [nvarchar](200) NOT NULL,
	[CabinetNumber] [int] NOT NULL,
 CONSTRAINT [PK_Doctor_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 19.06.2023 19:20:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicoment]    Script Date: 19.06.2023 19:20:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicoment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[QuantityInStock] [int] NOT NULL,
	[DateOfRenewalOfTheDrug] [date] NOT NULL,
 CONSTRAINT [PK_Medicoment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nurse]    Script Date: 19.06.2023 19:20:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nurse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Nurse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 19.06.2023 19:20:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[GenderID] [int] NOT NULL,
	[Birthday] [date] NOT NULL,
	[Telephone] [decimal](11, 0) NULL,
	[Address] [nvarchar](200) NULL,
	[TheContactPersonName] [nvarchar](200) NULL,
	[TheContactPersonTelephon] [decimal](11, 0) NULL,
	[TheContactPersonAddress] [nvarchar](200) NULL,
	[DiseaseID] [int] NOT NULL,
	[ArrivalDate] [date] NULL,
	[EstimatedDischargeDate] [date] NULL,
	[RoomNumber] [int] NULL,
	[DoctorID] [int] NOT NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TakinMedication]    Script Date: 19.06.2023 19:20:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TakinMedication](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MedicomentID] [int] NOT NULL,
	[DateOfAdmission] [date] NOT NULL,
	[Quantity] [nvarchar](50) NOT NULL,
	[PatientID] [int] NOT NULL,
	[NurseID] [int] NOT NULL,
 CONSTRAINT [PK_TakinMedication] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19.06.2023 19:20:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](200) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[MiddleName] [nvarchar](200) NULL,
	[Speciality] [nvarchar](200) NOT NULL,
	[Password] [nchar](3) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Disease] ON 

INSERT [dbo].[Disease] ([ID], [Name]) VALUES (1, N'Аденоиды')
INSERT [dbo].[Disease] ([ID], [Name]) VALUES (2, N'Болезнь Альцгеймера')
INSERT [dbo].[Disease] ([ID], [Name]) VALUES (3, N'Болезнь Крона')
INSERT [dbo].[Disease] ([ID], [Name]) VALUES (4, N'Бронхиальная астма')
INSERT [dbo].[Disease] ([ID], [Name]) VALUES (5, N'Инсульт')
INSERT [dbo].[Disease] ([ID], [Name]) VALUES (6, N'Грипп')
INSERT [dbo].[Disease] ([ID], [Name]) VALUES (7, N'Легионеллез')
INSERT [dbo].[Disease] ([ID], [Name]) VALUES (8, N'Инвазии')
INSERT [dbo].[Disease] ([ID], [Name]) VALUES (9, N'Амебиаз')
INSERT [dbo].[Disease] ([ID], [Name]) VALUES (10, N'Бруцеллез')
SET IDENTITY_INSERT [dbo].[Disease] OFF
GO
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([ID], [NameF], [Speciality], [CabinetNumber]) VALUES (1, N'Баранов Сергей Саввич', N'Провизор', 23)
INSERT [dbo].[Doctor] ([ID], [NameF], [Speciality], [CabinetNumber]) VALUES (2, N'Белов Владимир Глебович', N'Вирусолог', 2)
INSERT [dbo].[Doctor] ([ID], [NameF], [Speciality], [CabinetNumber]) VALUES (3, N'Крючкова Ксения Тимофеевна', N'Педиатр', 34)
INSERT [dbo].[Doctor] ([ID], [NameF], [Speciality], [CabinetNumber]) VALUES (4, N'Морозова Мария Сергеевна', N'Кардиолог', 50)
INSERT [dbo].[Doctor] ([ID], [NameF], [Speciality], [CabinetNumber]) VALUES (5, N'Федотова Варвара Михайловна', N'Проктолог', 11)
INSERT [dbo].[Doctor] ([ID], [NameF], [Speciality], [CabinetNumber]) VALUES (6, N'Иванков Дмитрий Оскарович', N'Андролог', 45)
INSERT [dbo].[Doctor] ([ID], [NameF], [Speciality], [CabinetNumber]) VALUES (7, N'Савин Вилен Тихонович', N'Токсиколог', 44)
INSERT [dbo].[Doctor] ([ID], [NameF], [Speciality], [CabinetNumber]) VALUES (8, N'Миронов Леонард Геннадьевич', N'Ортопед', 32)
INSERT [dbo].[Doctor] ([ID], [NameF], [Speciality], [CabinetNumber]) VALUES (9, N'Красильников Любомир Аркадьевич', N'Радиолог', 7)
INSERT [dbo].[Doctor] ([ID], [NameF], [Speciality], [CabinetNumber]) VALUES (10, N'Савин Ермолай Антонович', N'Кардиолог', 4)
SET IDENTITY_INSERT [dbo].[Doctor] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([ID], [Name]) VALUES (1, N'Женский')
INSERT [dbo].[Gender] ([ID], [Name]) VALUES (2, N'Мужской')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Medicoment] ON 

INSERT [dbo].[Medicoment] ([ID], [Name], [QuantityInStock], [DateOfRenewalOfTheDrug]) VALUES (1, N'ВАи-Т', 56, CAST(N'2005-09-23' AS Date))
INSERT [dbo].[Medicoment] ([ID], [Name], [QuantityInStock], [DateOfRenewalOfTheDrug]) VALUES (2, N'Марпин8', 18, CAST(N'2007-02-17' AS Date))
INSERT [dbo].[Medicoment] ([ID], [Name], [QuantityInStock], [DateOfRenewalOfTheDrug]) VALUES (3, N'Прокси-124', 60, CAST(N'2015-03-09' AS Date))
INSERT [dbo].[Medicoment] ([ID], [Name], [QuantityInStock], [DateOfRenewalOfTheDrug]) VALUES (4, N'Пронито', 34, CAST(N'2002-09-22' AS Date))
INSERT [dbo].[Medicoment] ([ID], [Name], [QuantityInStock], [DateOfRenewalOfTheDrug]) VALUES (5, N'Рион', 22, CAST(N'2011-06-23' AS Date))
INSERT [dbo].[Medicoment] ([ID], [Name], [QuantityInStock], [DateOfRenewalOfTheDrug]) VALUES (6, N'Лиони56', 66, CAST(N'2011-09-20' AS Date))
INSERT [dbo].[Medicoment] ([ID], [Name], [QuantityInStock], [DateOfRenewalOfTheDrug]) VALUES (7, N'Виста-рон', 54, CAST(N'2011-03-11' AS Date))
INSERT [dbo].[Medicoment] ([ID], [Name], [QuantityInStock], [DateOfRenewalOfTheDrug]) VALUES (8, N'Филт-орто-0999', 78, CAST(N'2019-09-29' AS Date))
INSERT [dbo].[Medicoment] ([ID], [Name], [QuantityInStock], [DateOfRenewalOfTheDrug]) VALUES (9, N'Минронто', 129, CAST(N'2009-09-06' AS Date))
INSERT [dbo].[Medicoment] ([ID], [Name], [QuantityInStock], [DateOfRenewalOfTheDrug]) VALUES (10, N'Ентроро97', 34, CAST(N'2017-07-07' AS Date))
SET IDENTITY_INSERT [dbo].[Medicoment] OFF
GO
SET IDENTITY_INSERT [dbo].[Nurse] ON 

INSERT [dbo].[Nurse] ([ID], [Name]) VALUES (1, N'Артамонова Амина Романовна')
INSERT [dbo].[Nurse] ([ID], [Name]) VALUES (2, N'Белов Максим Васильевич')
INSERT [dbo].[Nurse] ([ID], [Name]) VALUES (3, N'Захарова Мила Семёновна')
INSERT [dbo].[Nurse] ([ID], [Name]) VALUES (4, N'Иванов Андрей Богданович')
INSERT [dbo].[Nurse] ([ID], [Name]) VALUES (5, N'Соколова Екатерина Ивановна')
INSERT [dbo].[Nurse] ([ID], [Name]) VALUES (6, N'Котова Аурелия Витальевна')
INSERT [dbo].[Nurse] ([ID], [Name]) VALUES (7, N'Александрова Лия Арсеньевна')
INSERT [dbo].[Nurse] ([ID], [Name]) VALUES (8, N'Юдина Эшли Викторовна')
INSERT [dbo].[Nurse] ([ID], [Name]) VALUES (9, N'Лукина Альберта Георгьевна')
INSERT [dbo].[Nurse] ([ID], [Name]) VALUES (10, N'Князева Мэри Эльдаровна')
SET IDENTITY_INSERT [dbo].[Nurse] OFF
GO
SET IDENTITY_INSERT [dbo].[Patient] ON 

INSERT [dbo].[Patient] ([ID], [Name], [GenderID], [Birthday], [Telephone], [Address], [TheContactPersonName], [TheContactPersonTelephon], [TheContactPersonAddress], [DiseaseID], [ArrivalDate], [EstimatedDischargeDate], [RoomNumber], [DoctorID]) VALUES (1, N'Терехова Мария Александровна', 1, CAST(N'2000-07-22' AS Date), CAST(89765467432 AS Decimal(11, 0)), N'г. Москва, ул. Роялити, д. 7', N'Абрамова Виктория Михайловна', CAST(86543267876 AS Decimal(11, 0)), N'г. Москва, ул. Роялити, д. 9', 1, CAST(N'2020-09-12' AS Date), CAST(N'2020-09-19' AS Date), 3, 1)
INSERT [dbo].[Patient] ([ID], [Name], [GenderID], [Birthday], [Telephone], [Address], [TheContactPersonName], [TheContactPersonTelephon], [TheContactPersonAddress], [DiseaseID], [ArrivalDate], [EstimatedDischargeDate], [RoomNumber], [DoctorID]) VALUES (2, N'Дегтярев Максим Даниилович', 2, CAST(N'1992-02-21' AS Date), CAST(89766473212 AS Decimal(11, 0)), N'г. Москва, ул. Минтаево, д. 12, кв. 9', N'Петров Владислав Ярославович', CAST(89004957631 AS Decimal(11, 0)), N'г. Москва, ул. Нижняя, д. 19', 2, CAST(N'2000-06-23' AS Date), CAST(N'2000-07-06' AS Date), 4, 2)
INSERT [dbo].[Patient] ([ID], [Name], [GenderID], [Birthday], [Telephone], [Address], [TheContactPersonName], [TheContactPersonTelephon], [TheContactPersonAddress], [DiseaseID], [ArrivalDate], [EstimatedDischargeDate], [RoomNumber], [DoctorID]) VALUES (3, N'Васильев Тимофей Николаевич', 2, CAST(N'1989-10-18' AS Date), CAST(89054553344 AS Decimal(11, 0)), N'г. Москва, ул. Южная, д. 17, кв. 8', N'Иванов Лев Павлович', CAST(89765432987 AS Decimal(11, 0)), N'г. Москва, ул. Котико, д. 6, кв. 8', 3, CAST(N'2001-05-04' AS Date), CAST(N'2001-05-24' AS Date), 5, 3)
INSERT [dbo].[Patient] ([ID], [Name], [GenderID], [Birthday], [Telephone], [Address], [TheContactPersonName], [TheContactPersonTelephon], [TheContactPersonAddress], [DiseaseID], [ArrivalDate], [EstimatedDischargeDate], [RoomNumber], [DoctorID]) VALUES (4, N'Иванов Лев Павлович', 2, CAST(N'1994-09-25' AS Date), CAST(89483478378 AS Decimal(11, 0)), N'г. Москва, ул. Рыбкина, д. 8', N'Климов Андрей Даниилович', CAST(89034564730 AS Decimal(11, 0)), N'г. Москва, ул. Рунит, д. 9, кв. 7', 4, CAST(N'2011-07-09' AS Date), CAST(N'2011-09-09' AS Date), 7, 4)
INSERT [dbo].[Patient] ([ID], [Name], [GenderID], [Birthday], [Telephone], [Address], [TheContactPersonName], [TheContactPersonTelephon], [TheContactPersonAddress], [DiseaseID], [ArrivalDate], [EstimatedDischargeDate], [RoomNumber], [DoctorID]) VALUES (5, N'Ермакова Мария Марковна', 1, CAST(N'2002-11-09' AS Date), CAST(89765429458 AS Decimal(11, 0)), N'г. Москва, ул.Рожденская, д. 13', N'Петров Никита Даниилович', CAST(89764567733 AS Decimal(11, 0)), N'г. Москва, ул. Зарянкина, д. 29', 5, CAST(N'2022-03-13' AS Date), CAST(N'2022-03-18' AS Date), 8, 5)
INSERT [dbo].[Patient] ([ID], [Name], [GenderID], [Birthday], [Telephone], [Address], [TheContactPersonName], [TheContactPersonTelephon], [TheContactPersonAddress], [DiseaseID], [ArrivalDate], [EstimatedDischargeDate], [RoomNumber], [DoctorID]) VALUES (6, N'Сысоева Марфа Григорьевна', 1, CAST(N'2000-03-12' AS Date), CAST(84763479289 AS Decimal(11, 0)), N'г. Москва, ул. Семь д. 7', N'Кулагина Винетта Мэлоровна', CAST(86566473562 AS Decimal(11, 0)), N'г. Москва, ул. Семь д. 9', 6, CAST(N'2019-08-19' AS Date), CAST(N'2019-09-12' AS Date), 11, 6)
INSERT [dbo].[Patient] ([ID], [Name], [GenderID], [Birthday], [Telephone], [Address], [TheContactPersonName], [TheContactPersonTelephon], [TheContactPersonAddress], [DiseaseID], [ArrivalDate], [EstimatedDischargeDate], [RoomNumber], [DoctorID]) VALUES (7, N'Виноградова Эдита Иосифовна', 1, CAST(N'2001-09-03' AS Date), CAST(80198982356 AS Decimal(11, 0)), N'г. Москва, ул. Минте д. 34', N'Меркушева Эдита Иосифовна', CAST(86453264790 AS Decimal(11, 0)), N'г. Москва, ул. Винтернативная д. 13 кв 5', 7, CAST(N'2009-09-29' AS Date), CAST(N'2009-10-07' AS Date), 15, 7)
INSERT [dbo].[Patient] ([ID], [Name], [GenderID], [Birthday], [Telephone], [Address], [TheContactPersonName], [TheContactPersonTelephon], [TheContactPersonAddress], [DiseaseID], [ArrivalDate], [EstimatedDischargeDate], [RoomNumber], [DoctorID]) VALUES (8, N'Самсонов Антон Якунович', 2, CAST(N'1993-04-08' AS Date), CAST(87564376455 AS Decimal(11, 0)), N'г. Москва, ул. Вишнёвая д. 8, кв 5', N'Буров Рубен Яковлевич', CAST(86756483542 AS Decimal(11, 0)), N'г. Москва, ул. Винтернативная д. 9', 8, CAST(N'2017-10-30' AS Date), CAST(N'2017-11-16' AS Date), 14, 8)
INSERT [dbo].[Patient] ([ID], [Name], [GenderID], [Birthday], [Telephone], [Address], [TheContactPersonName], [TheContactPersonTelephon], [TheContactPersonAddress], [DiseaseID], [ArrivalDate], [EstimatedDischargeDate], [RoomNumber], [DoctorID]) VALUES (9, N'Баранов Андрей Михайлович', 2, CAST(N'1999-05-08' AS Date), CAST(86565743390 AS Decimal(11, 0)), N'г. Москва, ул. Северная д. 13 кв 77', N'Дементьев Варлаам Феликсович', CAST(87659047658 AS Decimal(11, 0)), N'г. Москва, ул. Северная д. 15 кв 40', 9, CAST(N'2011-09-07' AS Date), CAST(N'2011-09-22' AS Date), 10, 9)
INSERT [dbo].[Patient] ([ID], [Name], [GenderID], [Birthday], [Telephone], [Address], [TheContactPersonName], [TheContactPersonTelephon], [TheContactPersonAddress], [DiseaseID], [ArrivalDate], [EstimatedDischargeDate], [RoomNumber], [DoctorID]) VALUES (10, N'Рогов Семен Авксентьевич', 2, CAST(N'1999-10-24' AS Date), CAST(83645429918 AS Decimal(11, 0)), N'г. Москва, ул. Финская д. 49', N'Колесникова Данна Ивановна', CAST(86777954321 AS Decimal(11, 0)), N'г. Москва, ул. Чейконо д. 1 кв 7', 10, CAST(N'2016-02-09' AS Date), CAST(N'2016-02-09' AS Date), 16, 10)
SET IDENTITY_INSERT [dbo].[Patient] OFF
GO
SET IDENTITY_INSERT [dbo].[TakinMedication] ON 

INSERT [dbo].[TakinMedication] ([ID], [MedicomentID], [DateOfAdmission], [Quantity], [PatientID], [NurseID]) VALUES (1, 1, CAST(N'2020-09-13' AS Date), N'125 гр', 1, 1)
INSERT [dbo].[TakinMedication] ([ID], [MedicomentID], [DateOfAdmission], [Quantity], [PatientID], [NurseID]) VALUES (2, 2, CAST(N'2000-06-24' AS Date), N'105 гр', 2, 2)
INSERT [dbo].[TakinMedication] ([ID], [MedicomentID], [DateOfAdmission], [Quantity], [PatientID], [NurseID]) VALUES (3, 3, CAST(N'2001-05-05' AS Date), N'90 гр', 3, 3)
INSERT [dbo].[TakinMedication] ([ID], [MedicomentID], [DateOfAdmission], [Quantity], [PatientID], [NurseID]) VALUES (4, 4, CAST(N'2011-07-10' AS Date), N'55 гр', 4, 4)
INSERT [dbo].[TakinMedication] ([ID], [MedicomentID], [DateOfAdmission], [Quantity], [PatientID], [NurseID]) VALUES (5, 5, CAST(N'2022-03-14' AS Date), N'75 гр', 5, 5)
INSERT [dbo].[TakinMedication] ([ID], [MedicomentID], [DateOfAdmission], [Quantity], [PatientID], [NurseID]) VALUES (6, 6, CAST(N'2018-05-20' AS Date), N'155 гр', 6, 6)
INSERT [dbo].[TakinMedication] ([ID], [MedicomentID], [DateOfAdmission], [Quantity], [PatientID], [NurseID]) VALUES (7, 7, CAST(N'2015-09-22' AS Date), N'35 гр', 7, 7)
INSERT [dbo].[TakinMedication] ([ID], [MedicomentID], [DateOfAdmission], [Quantity], [PatientID], [NurseID]) VALUES (8, 8, CAST(N'2020-10-30' AS Date), N'55 гр', 8, 8)
INSERT [dbo].[TakinMedication] ([ID], [MedicomentID], [DateOfAdmission], [Quantity], [PatientID], [NurseID]) VALUES (9, 9, CAST(N'2011-07-22' AS Date), N'70 гр', 9, 9)
INSERT [dbo].[TakinMedication] ([ID], [MedicomentID], [DateOfAdmission], [Quantity], [PatientID], [NurseID]) VALUES (10, 10, CAST(N'2022-06-23' AS Date), N'75 гр', 10, 10)
SET IDENTITY_INSERT [dbo].[TakinMedication] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Surname], [Name], [MiddleName], [Speciality], [Password]) VALUES (1, N'Рузик', N'Эдуард', N'Николаевич', N'Администратор', N'123')
INSERT [dbo].[Users] ([ID], [Surname], [Name], [MiddleName], [Speciality], [Password]) VALUES (2, N'Конски', N'Майп', N'Алексеев', N'Глав врач', N'111')
INSERT [dbo].[Users] ([ID], [Surname], [Name], [MiddleName], [Speciality], [Password]) VALUES (3, N'Баранов', N'Сергей', N'Саввич', N'Провизор', N'222')
INSERT [dbo].[Users] ([ID], [Surname], [Name], [MiddleName], [Speciality], [Password]) VALUES (4, N'Белов', N'Владимир', N'Глебович', N'Вирусолог', N'132')
INSERT [dbo].[Users] ([ID], [Surname], [Name], [MiddleName], [Speciality], [Password]) VALUES (5, N'Крючкова', N'Ксения', N'Тимофеевна', N'Педиатр', N'345')
INSERT [dbo].[Users] ([ID], [Surname], [Name], [MiddleName], [Speciality], [Password]) VALUES (6, N'Морозова', N'Мария', N'Сергеевна', N'Кардиолог', N'223')
INSERT [dbo].[Users] ([ID], [Surname], [Name], [MiddleName], [Speciality], [Password]) VALUES (7, N'Федотова', N'Варвара', N'Михайловна', N'Проктолог', N'321')
INSERT [dbo].[Users] ([ID], [Surname], [Name], [MiddleName], [Speciality], [Password]) VALUES (8, N'Иванков', N'Дмитрий', N'Оскарович', N'Андролог', N'890')
INSERT [dbo].[Users] ([ID], [Surname], [Name], [MiddleName], [Speciality], [Password]) VALUES (9, N'Савин', N'Вилен', N'Тихонович', N'Токсиколог', N'865')
INSERT [dbo].[Users] ([ID], [Surname], [Name], [MiddleName], [Speciality], [Password]) VALUES (10, N'Миронов', N'Леонард', N'Геннадьевич', N'Ортопед', N'456')
INSERT [dbo].[Users] ([ID], [Surname], [Name], [MiddleName], [Speciality], [Password]) VALUES (11, N'Красильников', N'Любомир', N'Аркадьевич', N'Радиолог', N'295')
INSERT [dbo].[Users] ([ID], [Surname], [Name], [MiddleName], [Speciality], [Password]) VALUES (12, N'Савин', N'Ермолай', N'Антонович', N'Кардиолог', N'445')
INSERT [dbo].[Users] ([ID], [Surname], [Name], [MiddleName], [Speciality], [Password]) VALUES (13, N'Армина', N'Алина', N'Николаевна', N'Медсестра', N'903')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Disease] FOREIGN KEY([DiseaseID])
REFERENCES [dbo].[Disease] ([ID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Disease]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Doctor] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctor] ([ID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Doctor]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Gender]
GO
ALTER TABLE [dbo].[TakinMedication]  WITH CHECK ADD  CONSTRAINT [FK_TakinMedication_Medicoment] FOREIGN KEY([MedicomentID])
REFERENCES [dbo].[Medicoment] ([ID])
GO
ALTER TABLE [dbo].[TakinMedication] CHECK CONSTRAINT [FK_TakinMedication_Medicoment]
GO
ALTER TABLE [dbo].[TakinMedication]  WITH CHECK ADD  CONSTRAINT [FK_TakinMedication_Nurse] FOREIGN KEY([NurseID])
REFERENCES [dbo].[Nurse] ([ID])
GO
ALTER TABLE [dbo].[TakinMedication] CHECK CONSTRAINT [FK_TakinMedication_Nurse]
GO
ALTER TABLE [dbo].[TakinMedication]  WITH CHECK ADD  CONSTRAINT [FK_TakinMedication_Patient] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patient] ([ID])
GO
ALTER TABLE [dbo].[TakinMedication] CHECK CONSTRAINT [FK_TakinMedication_Patient]
GO
