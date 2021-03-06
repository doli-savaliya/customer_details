USE [Customer_Data_Pr]
GO
/****** Object:  Table [dbo].[CountryMaster]    Script Date: 1/19/2018 7:55:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryMaster](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Country_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_CountryMaster] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer_Details]    Script Date: 1/19/2018 7:55:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Country] [int] NULL,
	[State] [int] NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Customer_Detail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StateMaster]    Script Date: 1/19/2018 7:55:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateMaster](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](50) NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_StateMaster] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CountryMaster] ON 

INSERT [dbo].[CountryMaster] ([CountryID], [Country_Name]) VALUES (1, N'India')
INSERT [dbo].[CountryMaster] ([CountryID], [Country_Name]) VALUES (2, N'Australia')
INSERT [dbo].[CountryMaster] ([CountryID], [Country_Name]) VALUES (3, N'England')
SET IDENTITY_INSERT [dbo].[CountryMaster] OFF
SET IDENTITY_INSERT [dbo].[Customer_Details] ON 

INSERT [dbo].[Customer_Details] ([ID], [FirstName], [LastName], [Country], [State], [Image]) VALUES (2, N'Aldwin', N'ninda', 2, 4, N'img/Chrysanthemum.jpg')
INSERT [dbo].[Customer_Details] ([ID], [FirstName], [LastName], [Country], [State], [Image]) VALUES (3, N'Aldwin', N'ninda', 1, 1, N'img/Desert.jpg')
SET IDENTITY_INSERT [dbo].[Customer_Details] OFF
SET IDENTITY_INSERT [dbo].[StateMaster] ON 

INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (1, N'Gujarat', 1)
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (2, N'Rajsthan', 1)
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (3, N'Goa', 1)
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (4, N'New South Wales', 2)
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (5, N'Northern Territory', 2)
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (6, N'Queensland', 2)
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (7, N'Scotland', 3)
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (8, N'Northern Ireland', 3)
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (9, N'Wales', 3)
SET IDENTITY_INSERT [dbo].[StateMaster] OFF
