USE [220_kreditovanie]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 27.12.2023 18:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BankName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Debtors]    Script Date: 27.12.2023 18:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Debtors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformationAboutLoans]    Script Date: 27.12.2023 18:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationAboutLoans](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoansName] [nvarchar](50) NULL,
	[LoansTerm] [int] NULL,
	[InterestRate] [decimal](5, 2) NULL,
	[DownPayment] [decimal](11, 2) NULL,
	[MonthlyPayment] [decimal](11, 2) NULL,
	[LifeInsurance] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loans]    Script Date: 27.12.2023 18:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loans](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BankID] [int] NULL,
	[StartDate] [date] NULL,
	[DebtorID] [int] NULL,
	[InformationAboutLoansID] [int] NULL,
	[RealEstateObjectsID] [int] NULL,
	[AdditionalConditions] [nvarchar](max) NULL,
	[IsAccepted] [bit] NULL,
	[IsDecline] [bit] NULL,
	[IsPaid] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RealEstateCategory]    Script Date: 27.12.2023 18:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RealEstateCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EstateCategory] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RealEstateObjects]    Script Date: 27.12.2023 18:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RealEstateObjects](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RealEstateTypeID] [int] NULL,
	[RealEstateCategoryID] [int] NULL,
	[Price] [decimal](11, 2) NULL,
	[Address] [nvarchar](max) NULL,
	[Paid] [decimal](11, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RealEstateType]    Script Date: 27.12.2023 18:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RealEstateType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EstateType] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 27.12.2023 18:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Banks] ON 

INSERT [dbo].[Banks] ([ID], [BankName]) VALUES (1, N'Сбербанк')
INSERT [dbo].[Banks] ([ID], [BankName]) VALUES (2, N'Тинькофф Банк')
INSERT [dbo].[Banks] ([ID], [BankName]) VALUES (3, N'ВТБ')
INSERT [dbo].[Banks] ([ID], [BankName]) VALUES (4, N'Россельхозбанк')
INSERT [dbo].[Banks] ([ID], [BankName]) VALUES (5, N'Совкомбанк')
INSERT [dbo].[Banks] ([ID], [BankName]) VALUES (6, N'Райффайзенбанк')
INSERT [dbo].[Banks] ([ID], [BankName]) VALUES (7, N'Газпромбанк')
INSERT [dbo].[Banks] ([ID], [BankName]) VALUES (8, N'Альфа-Банк')
INSERT [dbo].[Banks] ([ID], [BankName]) VALUES (9, N'Почта Банк')
INSERT [dbo].[Banks] ([ID], [BankName]) VALUES (10, N'Ренессанс Банк')
SET IDENTITY_INSERT [dbo].[Banks] OFF
GO
SET IDENTITY_INSERT [dbo].[Debtors] ON 

INSERT [dbo].[Debtors] ([ID], [UserID]) VALUES (1, 1)
INSERT [dbo].[Debtors] ([ID], [UserID]) VALUES (2, 2)
INSERT [dbo].[Debtors] ([ID], [UserID]) VALUES (3, 4)
INSERT [dbo].[Debtors] ([ID], [UserID]) VALUES (4, 8)
INSERT [dbo].[Debtors] ([ID], [UserID]) VALUES (5, 10)
INSERT [dbo].[Debtors] ([ID], [UserID]) VALUES (6, 5)
INSERT [dbo].[Debtors] ([ID], [UserID]) VALUES (7, 6)
INSERT [dbo].[Debtors] ([ID], [UserID]) VALUES (8, 12)
INSERT [dbo].[Debtors] ([ID], [UserID]) VALUES (9, 13)
INSERT [dbo].[Debtors] ([ID], [UserID]) VALUES (10, 14)
SET IDENTITY_INSERT [dbo].[Debtors] OFF
GO
SET IDENTITY_INSERT [dbo].[InformationAboutLoans] ON 

INSERT [dbo].[InformationAboutLoans] ([ID], [LoansName], [LoansTerm], [InterestRate], [DownPayment], [MonthlyPayment], [LifeInsurance]) VALUES (20, N'Кредит', 2, CAST(12.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(11, 2)), CAST(127523.30 AS Decimal(11, 2)), 0)
INSERT [dbo].[InformationAboutLoans] ([ID], [LoansName], [LoansTerm], [InterestRate], [DownPayment], [MonthlyPayment], [LifeInsurance]) VALUES (21, N'Кредит', 5, CAST(54.00 AS Decimal(5, 2)), CAST(45000.00 AS Decimal(11, 2)), CAST(92600.00 AS Decimal(11, 2)), 0)
INSERT [dbo].[InformationAboutLoans] ([ID], [LoansName], [LoansTerm], [InterestRate], [DownPayment], [MonthlyPayment], [LifeInsurance]) VALUES (22, N'Кредит', 2, CAST(12.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(11, 2)), CAST(127523.30 AS Decimal(11, 2)), 0)
INSERT [dbo].[InformationAboutLoans] ([ID], [LoansName], [LoansTerm], [InterestRate], [DownPayment], [MonthlyPayment], [LifeInsurance]) VALUES (23, N'Кредит', 2, CAST(12.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(11, 2)), CAST(127523.30 AS Decimal(11, 2)), 0)
INSERT [dbo].[InformationAboutLoans] ([ID], [LoansName], [LoansTerm], [InterestRate], [DownPayment], [MonthlyPayment], [LifeInsurance]) VALUES (24, N'Ипотека', 2, CAST(13.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(11, 2)), CAST(784995.00 AS Decimal(11, 2)), 0)
INSERT [dbo].[InformationAboutLoans] ([ID], [LoansName], [LoansTerm], [InterestRate], [DownPayment], [MonthlyPayment], [LifeInsurance]) VALUES (25, N'Кредит', 12, CAST(13.00 AS Decimal(5, 2)), CAST(222.00 AS Decimal(11, 2)), CAST(34566.00 AS Decimal(11, 2)), 1)
INSERT [dbo].[InformationAboutLoans] ([ID], [LoansName], [LoansTerm], [InterestRate], [DownPayment], [MonthlyPayment], [LifeInsurance]) VALUES (26, N'Кредит', 3, CAST(44.00 AS Decimal(5, 2)), CAST(565.00 AS Decimal(11, 2)), CAST(345555.00 AS Decimal(11, 2)), 0)
INSERT [dbo].[InformationAboutLoans] ([ID], [LoansName], [LoansTerm], [InterestRate], [DownPayment], [MonthlyPayment], [LifeInsurance]) VALUES (27, N'Кредит', 2, CAST(34.00 AS Decimal(5, 2)), CAST(445.00 AS Decimal(11, 2)), CAST(52153.00 AS Decimal(11, 2)), 0)
INSERT [dbo].[InformationAboutLoans] ([ID], [LoansName], [LoansTerm], [InterestRate], [DownPayment], [MonthlyPayment], [LifeInsurance]) VALUES (28, N'Кредит', 1, CAST(33.00 AS Decimal(5, 2)), CAST(5655.00 AS Decimal(11, 2)), CAST(5225.00 AS Decimal(11, 2)), 0)
INSERT [dbo].[InformationAboutLoans] ([ID], [LoansName], [LoansTerm], [InterestRate], [DownPayment], [MonthlyPayment], [LifeInsurance]) VALUES (29, N'Кредит', 1, CAST(33.00 AS Decimal(5, 2)), CAST(555.00 AS Decimal(11, 2)), CAST(557755.00 AS Decimal(11, 2)), 0)
INSERT [dbo].[InformationAboutLoans] ([ID], [LoansName], [LoansTerm], [InterestRate], [DownPayment], [MonthlyPayment], [LifeInsurance]) VALUES (30, N'Ипотека', 13, CAST(23.00 AS Decimal(5, 2)), CAST(23454.00 AS Decimal(11, 2)), CAST(3455656.00 AS Decimal(11, 2)), 0)
INSERT [dbo].[InformationAboutLoans] ([ID], [LoansName], [LoansTerm], [InterestRate], [DownPayment], [MonthlyPayment], [LifeInsurance]) VALUES (31, N'Ипотека', 1, CAST(111.00 AS Decimal(5, 2)), CAST(5454.00 AS Decimal(11, 2)), CAST(54534153.00 AS Decimal(11, 2)), 0)
SET IDENTITY_INSERT [dbo].[InformationAboutLoans] OFF
GO
SET IDENTITY_INSERT [dbo].[Loans] ON 

INSERT [dbo].[Loans] ([ID], [BankID], [StartDate], [DebtorID], [InformationAboutLoansID], [RealEstateObjectsID], [AdditionalConditions], [IsAccepted], [IsDecline], [IsPaid]) VALUES (22, 7, CAST(N'2023-10-22' AS Date), 1, 20, 21, N'Отсутствует', 1, 0, 1)
INSERT [dbo].[Loans] ([ID], [BankID], [StartDate], [DebtorID], [InformationAboutLoansID], [RealEstateObjectsID], [AdditionalConditions], [IsAccepted], [IsDecline], [IsPaid]) VALUES (23, 10, CAST(N'2023-10-22' AS Date), 1, 21, 22, N'Отсутствует', 1, 0, 1)
INSERT [dbo].[Loans] ([ID], [BankID], [StartDate], [DebtorID], [InformationAboutLoansID], [RealEstateObjectsID], [AdditionalConditions], [IsAccepted], [IsDecline], [IsPaid]) VALUES (24, 7, CAST(N'2023-10-22' AS Date), 1, 22, 21, N'Отсутствует', 1, 0, 1)
INSERT [dbo].[Loans] ([ID], [BankID], [StartDate], [DebtorID], [InformationAboutLoansID], [RealEstateObjectsID], [AdditionalConditions], [IsAccepted], [IsDecline], [IsPaid]) VALUES (25, 9, CAST(N'2023-10-22' AS Date), 1, 23, 21, N'Отсутствует', 1, 0, 1)
INSERT [dbo].[Loans] ([ID], [BankID], [StartDate], [DebtorID], [InformationAboutLoansID], [RealEstateObjectsID], [AdditionalConditions], [IsAccepted], [IsDecline], [IsPaid]) VALUES (26, 1, CAST(N'2023-10-22' AS Date), 2, 20, 22, N'Отсутствует', 1, 0, 1)
INSERT [dbo].[Loans] ([ID], [BankID], [StartDate], [DebtorID], [InformationAboutLoansID], [RealEstateObjectsID], [AdditionalConditions], [IsAccepted], [IsDecline], [IsPaid]) VALUES (27, 2, CAST(N'2023-10-22' AS Date), 2, 21, 22, N'Отсутствует', 1, 0, 1)
INSERT [dbo].[Loans] ([ID], [BankID], [StartDate], [DebtorID], [InformationAboutLoansID], [RealEstateObjectsID], [AdditionalConditions], [IsAccepted], [IsDecline], [IsPaid]) VALUES (28, 3, CAST(N'2023-10-22' AS Date), 5, 22, 22, N'Отсутствует', 1, 0, 1)
INSERT [dbo].[Loans] ([ID], [BankID], [StartDate], [DebtorID], [InformationAboutLoansID], [RealEstateObjectsID], [AdditionalConditions], [IsAccepted], [IsDecline], [IsPaid]) VALUES (29, 3, CAST(N'2023-10-22' AS Date), 5, 23, 22, N'Отсутствует', 1, 0, 1)
INSERT [dbo].[Loans] ([ID], [BankID], [StartDate], [DebtorID], [InformationAboutLoansID], [RealEstateObjectsID], [AdditionalConditions], [IsAccepted], [IsDecline], [IsPaid]) VALUES (30, 5, CAST(N'2023-10-22' AS Date), 3, 20, 22, N'Отсутствует', 1, 0, 1)
INSERT [dbo].[Loans] ([ID], [BankID], [StartDate], [DebtorID], [InformationAboutLoansID], [RealEstateObjectsID], [AdditionalConditions], [IsAccepted], [IsDecline], [IsPaid]) VALUES (31, 5, CAST(N'2023-10-22' AS Date), 3, 21, 22, N'Отсутствует', 1, 0, 1)
INSERT [dbo].[Loans] ([ID], [BankID], [StartDate], [DebtorID], [InformationAboutLoansID], [RealEstateObjectsID], [AdditionalConditions], [IsAccepted], [IsDecline], [IsPaid]) VALUES (32, 5, CAST(N'2023-10-22' AS Date), 4, 22, 21, N'Отсутствует', 1, 0, 1)
SET IDENTITY_INSERT [dbo].[Loans] OFF
GO
SET IDENTITY_INSERT [dbo].[RealEstateCategory] ON 

INSERT [dbo].[RealEstateCategory] ([ID], [EstateCategory]) VALUES (1, N'Нежилое здание')
INSERT [dbo].[RealEstateCategory] ([ID], [EstateCategory]) VALUES (2, N'Жилой дом')
INSERT [dbo].[RealEstateCategory] ([ID], [EstateCategory]) VALUES (3, N'Многоквартирный дом')
INSERT [dbo].[RealEstateCategory] ([ID], [EstateCategory]) VALUES (4, N'Садовый дом')
INSERT [dbo].[RealEstateCategory] ([ID], [EstateCategory]) VALUES (5, N'Гараж')
INSERT [dbo].[RealEstateCategory] ([ID], [EstateCategory]) VALUES (6, N'Квартира')
INSERT [dbo].[RealEstateCategory] ([ID], [EstateCategory]) VALUES (7, N'Комната (в квартире)')
INSERT [dbo].[RealEstateCategory] ([ID], [EstateCategory]) VALUES (8, N'Дом')
INSERT [dbo].[RealEstateCategory] ([ID], [EstateCategory]) VALUES (9, N'Помещенеи')
INSERT [dbo].[RealEstateCategory] ([ID], [EstateCategory]) VALUES (10, N'Торговый цнтр')
SET IDENTITY_INSERT [dbo].[RealEstateCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[RealEstateObjects] ON 

INSERT [dbo].[RealEstateObjects] ([ID], [RealEstateTypeID], [RealEstateCategoryID], [Price], [Address], [Paid]) VALUES (21, 4, 7, CAST(255046.60 AS Decimal(11, 2)), N'Мимо', CAST(255046.60 AS Decimal(11, 2)))
INSERT [dbo].[RealEstateObjects] ([ID], [RealEstateTypeID], [RealEstateCategoryID], [Price], [Address], [Paid]) VALUES (22, 4, 2, CAST(508000.00 AS Decimal(11, 2)), N'Не знаю', CAST(508000.00 AS Decimal(11, 2)))
INSERT [dbo].[RealEstateObjects] ([ID], [RealEstateTypeID], [RealEstateCategoryID], [Price], [Address], [Paid]) VALUES (23, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[RealEstateObjects] ([ID], [RealEstateTypeID], [RealEstateCategoryID], [Price], [Address], [Paid]) VALUES (24, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[RealEstateObjects] ([ID], [RealEstateTypeID], [RealEstateCategoryID], [Price], [Address], [Paid]) VALUES (25, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[RealEstateObjects] ([ID], [RealEstateTypeID], [RealEstateCategoryID], [Price], [Address], [Paid]) VALUES (26, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[RealEstateObjects] ([ID], [RealEstateTypeID], [RealEstateCategoryID], [Price], [Address], [Paid]) VALUES (27, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[RealEstateObjects] ([ID], [RealEstateTypeID], [RealEstateCategoryID], [Price], [Address], [Paid]) VALUES (28, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[RealEstateObjects] ([ID], [RealEstateTypeID], [RealEstateCategoryID], [Price], [Address], [Paid]) VALUES (30, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[RealEstateObjects] ([ID], [RealEstateTypeID], [RealEstateCategoryID], [Price], [Address], [Paid]) VALUES (31, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[RealEstateObjects] ([ID], [RealEstateTypeID], [RealEstateCategoryID], [Price], [Address], [Paid]) VALUES (32, 4, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[RealEstateObjects] OFF
GO
SET IDENTITY_INSERT [dbo].[RealEstateType] ON 

INSERT [dbo].[RealEstateType] ([ID], [EstateType]) VALUES (1, N'Земельный участок')
INSERT [dbo].[RealEstateType] ([ID], [EstateType]) VALUES (2, N'Здание')
INSERT [dbo].[RealEstateType] ([ID], [EstateType]) VALUES (3, N'Сооружение')
INSERT [dbo].[RealEstateType] ([ID], [EstateType]) VALUES (4, N'Помещение')
INSERT [dbo].[RealEstateType] ([ID], [EstateType]) VALUES (5, N'Машино-место')
INSERT [dbo].[RealEstateType] ([ID], [EstateType]) VALUES (6, N'Объект незавершенного строительства')
INSERT [dbo].[RealEstateType] ([ID], [EstateType]) VALUES (7, N'Единый недвижимый комплекс')
SET IDENTITY_INSERT [dbo].[RealEstateType] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (1, N'user1@test.ru', N'!Admin123', N'Роман', N'Ермакович', N'Стацевич')
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (2, N'user2', N'Admin1', N'Ирина', N'Вячеславович', N'Подорожный')
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (3, N'user3', N'Admin1', N'Александра', N'Яковлевна', N'Демьянова')
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (4, N'user4', N'Admin1', N'Ева', N'Эльдарович', N'Куколевский')
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (5, N'user5', N'Admin1', N'София', N'Геннадьевич', N'Ржевский')
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (6, N'user6', N'Admin1', N'Денис', N'Сергеевна', N'Львова')
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (7, N'user7', N'Admin1', N'Денис', N'Леонидовна', N'Солнцева')
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (8, N'user8', N'Admin2', N'Дарина', N'Семенович', N'Малышев')
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (9, N'user9', N'Admin2', N'Амвросий', N'Макарович', N'Прокофьев')
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (10, N'user10', N'Admin2', N'Евгений', N'Закирович', N'Антонов')
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (12, N'333', N'333', N'333', N'333', N'33')
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (13, N'22', N'2', NULL, NULL, NULL)
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (14, N'2', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (15, N'2', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Patronymic], [Surname]) VALUES (16, N'2', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Debtors]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Loans]  WITH CHECK ADD FOREIGN KEY([BankID])
REFERENCES [dbo].[Banks] ([ID])
GO
ALTER TABLE [dbo].[Loans]  WITH CHECK ADD FOREIGN KEY([DebtorID])
REFERENCES [dbo].[Debtors] ([ID])
GO
ALTER TABLE [dbo].[Loans]  WITH CHECK ADD FOREIGN KEY([InformationAboutLoansID])
REFERENCES [dbo].[InformationAboutLoans] ([ID])
GO
ALTER TABLE [dbo].[Loans]  WITH CHECK ADD FOREIGN KEY([RealEstateObjectsID])
REFERENCES [dbo].[RealEstateObjects] ([ID])
GO
ALTER TABLE [dbo].[RealEstateObjects]  WITH CHECK ADD FOREIGN KEY([RealEstateTypeID])
REFERENCES [dbo].[RealEstateType] ([ID])
GO
ALTER TABLE [dbo].[RealEstateObjects]  WITH CHECK ADD FOREIGN KEY([RealEstateCategoryID])
REFERENCES [dbo].[RealEstateCategory] ([ID])
GO
