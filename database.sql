USE [master]
GO
/****** Object:  Database [test]    Script Date: 6/23/2021 11:52:03 AM ******/
CREATE DATABASE [test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\test.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\test_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [test] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test] SET ARITHABORT OFF 
GO
ALTER DATABASE [test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test] SET  ENABLE_BROKER 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test] SET RECOVERY FULL 
GO
ALTER DATABASE [test] SET  MULTI_USER 
GO
ALTER DATABASE [test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [test] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'test', N'ON'
GO
ALTER DATABASE [test] SET QUERY_STORE = OFF
GO
USE [test]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [test]
GO
/****** Object:  Table [dbo].[tbl_registration]    Script Date: 6/23/2021 11:52:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_registration](
	[Email] [nvarchar](max) NULL,
	[Password] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_registration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_registration] ON 
GO
INSERT [dbo].[tbl_registration] ([Email], [Password], [Name], [Address], [City], [id]) VALUES (N'test4@gmail.com', 1234, N'John', N'Delhi', N'New Delhi', 1)
GO
INSERT [dbo].[tbl_registration] ([Email], [Password], [Name], [Address], [City], [id]) VALUES (N'test5@gmailom', 12345, N'Jack', N'Noida', N'Noida Sec-22', 2)
GO
INSERT [dbo].[tbl_registration] ([Email], [Password], [Name], [Address], [City], [id]) VALUES (N'test4@gmail.com', 1234, N'John', N'Delhi', N'New Delhi', 3)
GO
INSERT [dbo].[tbl_registration] ([Email], [Password], [Name], [Address], [City], [id]) VALUES (N'test5@gmailom', 12345, N'Jack', N'Noida', N'Noida Sec-22', 4)
GO
INSERT [dbo].[tbl_registration] ([Email], [Password], [Name], [Address], [City], [id]) VALUES (N'test4@gmail.com', 1234, N'John', N'Delhi', N'New Delhi', 5)
GO
INSERT [dbo].[tbl_registration] ([Email], [Password], [Name], [Address], [City], [id]) VALUES (N'test5@gmailom', 12345, N'Jack', N'Noida', N'Noida Sec-22', 6)
GO
INSERT [dbo].[tbl_registration] ([Email], [Password], [Name], [Address], [City], [id]) VALUES (N'test4@gmail.com', 1234, N'John', N'Delhi', N'New Delhi', 7)
GO
INSERT [dbo].[tbl_registration] ([Email], [Password], [Name], [Address], [City], [id]) VALUES (N'test5@gmailom', 12345, N'Jack', N'Noida', N'Noida Sec-22', 8)
GO
SET IDENTITY_INSERT [dbo].[tbl_registration] OFF
GO
USE [master]
GO
ALTER DATABASE [test] SET  READ_WRITE 
GO
