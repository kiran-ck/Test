USE [FreshersReporting]
GO
/****** Object:  Schema [Rpt]    Script Date: 06-03-2019 12:26:42 ******/
CREATE SCHEMA [Rpt]
GO
/****** Object:  Table [Rpt].[Tbl_FresherDetails]    Script Date: 06-03-2019 12:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Rpt].[Tbl_FresherDetails](
	[FresherID] [int] IDENTITY(1,1) NOT NULL,
	[FresherName] [nvarchar](25) NOT NULL,
	[FresherAddress] [nvarchar](50) NOT NULL,
	[Technology] [nvarchar](25) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[Results] [nvarchar](25) NOT NULL,
	[LocationID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FresherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Rpt].[Tbl_Location]    Script Date: 06-03-2019 12:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Rpt].[Tbl_Location](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Rpt].[Tbl_Manager]    Script Date: 06-03-2019 12:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Rpt].[Tbl_Manager](
	[ManagerID] [int] IDENTITY(1,1) NOT NULL,
	[ManagerName] [nvarchar](25) NOT NULL,
	[PhoneNumber] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ManagerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Rpt].[Tbl_Mentor]    Script Date: 06-03-2019 12:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Rpt].[Tbl_Mentor](
	[MentorID] [int] IDENTITY(1,1) NOT NULL,
	[MentorName] [nvarchar](25) NOT NULL,
	[PhoneNumber] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MentorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Rpt].[Tbl_Ratings]    Script Date: 06-03-2019 12:26:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Rpt].[Tbl_Ratings](
	[RatingID] [int] IDENTITY(1,1) NOT NULL,
	[FresherID] [int] NOT NULL,
	[MentorID] [int] NOT NULL,
	[ManagerID] [int] NOT NULL,
	[Week] [int] NOT NULL,
	[CodingSkills] [int] NOT NULL,
	[InvestigationSkills] [int] NOT NULL,
	[ProblemSolving] [int] NOT NULL,
	[IndependentThinking] [int] NOT NULL,
	[PresentationSkills] [int] NOT NULL,
	[Feedback] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Rpt].[Tbl_FresherDetails] ON 

INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (1, N'Taha', N'JP Nagar', N'Database', CAST(N'2019-11-02' AS Date), CAST(N'2019-11-05' AS Date), N'NOT EVALUATED', 1)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (2, N'Chaithanya', N'Hosur', N'Javascript', CAST(N'2019-07-01' AS Date), CAST(N'2019-07-04' AS Date), N'NOT EVALUATED', 1)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (16, N'Rakesh', N'Silk Board', N'Testing', CAST(N'2018-09-09' AS Date), CAST(N'2019-09-01' AS Date), N'NOT EVALUATED', 1)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (20, N'Praveen', N'Koromanagla', N'Python', CAST(N'2019-01-28' AS Date), CAST(N'2019-03-28' AS Date), N'NOT EVALUATED', 2)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (21, N'Kiran CM', N'BTM Layout', N'Javascript', CAST(N'2019-04-21' AS Date), CAST(N'2019-07-21' AS Date), N'NOT EVALUATED', 1)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (26, N'Varun J', N'HSR Layout', N'JAVA', CAST(N'2019-01-21' AS Date), CAST(N'2019-04-21' AS Date), N'NOT EVALUATED', 1)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (28, N'Sujan R', N'ITI Layout', N'R', CAST(N'2019-01-21' AS Date), CAST(N'2019-04-21' AS Date), N'NOT EVALUATED', 1)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (29, N'Girish P', N'HSR Layout', N'TypeScript', CAST(N'2019-01-21' AS Date), CAST(N'2019-04-21' AS Date), N'NOT EVALUATED', 1)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (30, N'Gourish N H', N'ITI Layout', N'JAVA', CAST(N'2019-01-21' AS Date), CAST(N'2019-04-21' AS Date), N'NOT EVALUATED', 1)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (31, N'Atrey H', N'AMA Layout', N'Angular', CAST(N'2019-01-21' AS Date), CAST(N'2019-04-21' AS Date), N'NOT EVALUATED', 2)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (32, N'Abhishek Hegde', N'SJR Layout', N'Node', CAST(N'2019-01-21' AS Date), CAST(N'2019-04-21' AS Date), N'NOT EVALUATED', 1)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (33, N'Mohit S', N'AKA Layout', N'JS', CAST(N'2019-01-21' AS Date), CAST(N'2019-04-21' AS Date), N'NOT EVALUATED', 2)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (34, N'Reena', N'HSR Layout', N'Python', CAST(N'2019-01-21' AS Date), CAST(N'2019-04-21' AS Date), N'NOT EVALUATED', 1)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (35, N'Purvasha', N'ITI Layout', N'SQL', CAST(N'2019-01-21' AS Date), CAST(N'2019-04-21' AS Date), N'NOT EVALUATED', 1)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (36, N'Priya', N'AMA Layout', N'C#', CAST(N'2019-01-21' AS Date), CAST(N'2019-04-21' AS Date), N'NOT EVALUATED', 2)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (37, N'Nischita', N'SJR Layout', N'Node', CAST(N'2019-01-21' AS Date), CAST(N'2019-04-21' AS Date), N'NOT EVALUATED', 1)
INSERT [Rpt].[Tbl_FresherDetails] ([FresherID], [FresherName], [FresherAddress], [Technology], [StartDate], [EndDate], [Results], [LocationID]) VALUES (38, N'Susan', N'AKA Layout', N'C++', CAST(N'2019-01-21' AS Date), CAST(N'2019-04-21' AS Date), N'NOT EVALUATED', 2)
SET IDENTITY_INSERT [Rpt].[Tbl_FresherDetails] OFF
SET IDENTITY_INSERT [Rpt].[Tbl_Location] ON 

INSERT [Rpt].[Tbl_Location] ([LocationID], [LocationName]) VALUES (1, N'Bangalore')
INSERT [Rpt].[Tbl_Location] ([LocationID], [LocationName]) VALUES (2, N'Jaipur')
SET IDENTITY_INSERT [Rpt].[Tbl_Location] OFF
SET IDENTITY_INSERT [Rpt].[Tbl_Manager] ON 

INSERT [Rpt].[Tbl_Manager] ([ManagerID], [ManagerName], [PhoneNumber]) VALUES (1, N'Vijaya', N'987678909')
INSERT [Rpt].[Tbl_Manager] ([ManagerID], [ManagerName], [PhoneNumber]) VALUES (2, N'Rakesh', N'9878904324')
INSERT [Rpt].[Tbl_Manager] ([ManagerID], [ManagerName], [PhoneNumber]) VALUES (3, N'kavya', N'7654321890')
INSERT [Rpt].[Tbl_Manager] ([ManagerID], [ManagerName], [PhoneNumber]) VALUES (4, N'Ritesh', N'8907654321')
SET IDENTITY_INSERT [Rpt].[Tbl_Manager] OFF
SET IDENTITY_INSERT [Rpt].[Tbl_Mentor] ON 

INSERT [Rpt].[Tbl_Mentor] ([MentorID], [MentorName], [PhoneNumber]) VALUES (1, N'Sri krishna', N'9876543210')
INSERT [Rpt].[Tbl_Mentor] ([MentorID], [MentorName], [PhoneNumber]) VALUES (2, N'Madhavi', N'9876789065')
INSERT [Rpt].[Tbl_Mentor] ([MentorID], [MentorName], [PhoneNumber]) VALUES (3, N'prasun', N'8907657890')
INSERT [Rpt].[Tbl_Mentor] ([MentorID], [MentorName], [PhoneNumber]) VALUES (4, N'Chetan', N'7890098765')
INSERT [Rpt].[Tbl_Mentor] ([MentorID], [MentorName], [PhoneNumber]) VALUES (5, N'Kiran', N'9090909090')
SET IDENTITY_INSERT [Rpt].[Tbl_Mentor] OFF
SET IDENTITY_INSERT [Rpt].[Tbl_Ratings] ON 

INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (1, 1, 1, 1, 1, 4, 5, 4, 5, 4, N'Good')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (2, 2, 2, 1, 1, 3, 3, 3, 4, 2, N'Average')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (3, 16, 3, 2, 1, 2, 2, 2, 3, 3, N'Bad')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (4, 20, 4, 2, 1, 3, 4, 1, 3, 4, N'Average')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (5, 21, 5, 3, 1, 4, 3, 3, 3, 3, N'Average')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (6, 26, 2, 1, 1, 3, 4, 4, 4, 2, N'Good')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (7, 28, 3, 4, 1, 2, 2, 2, 2, 1, N'Bad')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (8, 29, 4, 4, 1, 1, 1, 4, 2, 3, N'Bad')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (9, 30, 5, 3, 1, 5, 2, 3, 1, 4, N'Average')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (10, 31, 1, 1, 1, 3, 3, 4, 3, 2, N'Average')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (11, 32, 2, 2, 1, 4, 1, 2, 2, 4, N'Bad')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (12, 33, 2, 3, 1, 2, 5, 4, 4, 3, N'Good')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (13, 34, 3, 4, 1, 4, 4, 1, 3, 4, N'Good')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (14, 35, 4, 1, 1, 3, 3, 4, 2, 1, N'Average')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (15, 36, 3, 3, 1, 4, 4, 1, 4, 2, N'Good')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (16, 37, 4, 2, 1, 1, 5, 2, 2, 3, N'Average')
INSERT [Rpt].[Tbl_Ratings] ([RatingID], [FresherID], [MentorID], [ManagerID], [Week], [CodingSkills], [InvestigationSkills], [ProblemSolving], [IndependentThinking], [PresentationSkills], [Feedback]) VALUES (17, 38, 2, 3, 1, 4, 2, 3, 5, 4, N'Average')
SET IDENTITY_INSERT [Rpt].[Tbl_Ratings] OFF
ALTER TABLE [Rpt].[Tbl_FresherDetails] ADD  DEFAULT ('NOT EVALUATED') FOR [Results]
GO
ALTER TABLE [Rpt].[Tbl_FresherDetails]  WITH CHECK ADD FOREIGN KEY([LocationID])
REFERENCES [Rpt].[Tbl_Location] ([LocationID])
GO
ALTER TABLE [Rpt].[Tbl_Ratings]  WITH CHECK ADD FOREIGN KEY([FresherID])
REFERENCES [Rpt].[Tbl_FresherDetails] ([FresherID])
GO
ALTER TABLE [Rpt].[Tbl_Ratings]  WITH CHECK ADD FOREIGN KEY([ManagerID])
REFERENCES [Rpt].[Tbl_Manager] ([ManagerID])
GO
ALTER TABLE [Rpt].[Tbl_Ratings]  WITH CHECK ADD FOREIGN KEY([MentorID])
REFERENCES [Rpt].[Tbl_Mentor] ([MentorID])
GO
