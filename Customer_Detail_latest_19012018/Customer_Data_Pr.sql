USE [master]
GO
/****** Object:  Database [Customer_Data_Pr]    Script Date: 11/24/2017 5:53:19 PM ******/
CREATE DATABASE [Customer_Data_Pr]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Customer_Data_Pr', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.VIKASSQLSERVER\MSSQL\DATA\Customer_Data_Pr.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Customer_Data_Pr_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.VIKASSQLSERVER\MSSQL\DATA\Customer_Data_Pr_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Customer_Data_Pr] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Customer_Data_Pr].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Customer_Data_Pr] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET ARITHABORT OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Customer_Data_Pr] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Customer_Data_Pr] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Customer_Data_Pr] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Customer_Data_Pr] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Customer_Data_Pr] SET  MULTI_USER 
GO
ALTER DATABASE [Customer_Data_Pr] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Customer_Data_Pr] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Customer_Data_Pr] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Customer_Data_Pr] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Customer_Data_Pr] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Customer_Data_Pr]
GO
/****** Object:  Table [dbo].[CountryMaster]    Script Date: 11/24/2017 5:53:19 PM ******/
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
/****** Object:  Table [dbo].[Customer_Details]    Script Date: 11/24/2017 5:53:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Customer_Detail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StateMaster]    Script Date: 11/24/2017 5:53:19 PM ******/
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

GO
INSERT [dbo].[CountryMaster] ([CountryID], [Country_Name]) VALUES (1, N'India')
GO
INSERT [dbo].[CountryMaster] ([CountryID], [Country_Name]) VALUES (2, N'Australia')
GO
INSERT [dbo].[CountryMaster] ([CountryID], [Country_Name]) VALUES (3, N'England')
GO
SET IDENTITY_INSERT [dbo].[CountryMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer_Details] ON 

GO
INSERT [dbo].[Customer_Details] ([ID], [FirstName], [LastName], [Country], [State], [Image]) VALUES (1, N'Jigar', N'Tanna', N'2', N'6', N'img/Lighthouse.jpg')
GO
SET IDENTITY_INSERT [dbo].[Customer_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[StateMaster] ON 

GO
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (1, N'Gujarat', 1)
GO
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (2, N'Rajsthan', 1)
GO
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (3, N'Goa', 1)
GO
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (4, N'New South Wales', 2)
GO
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (5, N'Northern Territory', 2)
GO
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (6, N'Queensland', 2)
GO
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (7, N'Scotland', 3)
GO
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (8, N'Northern Ireland', 3)
GO
INSERT [dbo].[StateMaster] ([StateID], [StateName], [CountryID]) VALUES (9, N'Wales', 3)
GO
SET IDENTITY_INSERT [dbo].[StateMaster] OFF
GO
USE [master]
GO
ALTER DATABASE [Customer_Data_Pr] SET  READ_WRITE 
GO
