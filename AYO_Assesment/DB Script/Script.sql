USE [master]
GO
/****** Object:  Database [Metric_Conversion]    Script Date: 07-05-2023 19:09:12 ******/
CREATE DATABASE [Metric_Conversion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Metric_Conversion', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Metric_Conversion.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Metric_Conversion_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Metric_Conversion_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Metric_Conversion] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Metric_Conversion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Metric_Conversion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Metric_Conversion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Metric_Conversion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Metric_Conversion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Metric_Conversion] SET ARITHABORT OFF 
GO
ALTER DATABASE [Metric_Conversion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Metric_Conversion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Metric_Conversion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Metric_Conversion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Metric_Conversion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Metric_Conversion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Metric_Conversion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Metric_Conversion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Metric_Conversion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Metric_Conversion] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Metric_Conversion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Metric_Conversion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Metric_Conversion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Metric_Conversion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Metric_Conversion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Metric_Conversion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Metric_Conversion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Metric_Conversion] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Metric_Conversion] SET  MULTI_USER 
GO
ALTER DATABASE [Metric_Conversion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Metric_Conversion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Metric_Conversion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Metric_Conversion] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Metric_Conversion] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Metric_Conversion] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Metric_Conversion] SET QUERY_STORE = OFF
GO
USE [Metric_Conversion]
GO
/****** Object:  Table [dbo].[RateMaster]    Script Date: 07-05-2023 19:09:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RateMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Convert_From] [varchar](255) NOT NULL,
	[Convert_To] [varchar](255) NOT NULL,
	[Rate] [float] NOT NULL,
	[Action] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_RateMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RateMaster] ON 

INSERT [dbo].[RateMaster] ([ID], [Convert_From], [Convert_To], [Rate], [Action], [Status]) VALUES (1, N'centimeters', N'Inches', 2.54, N'Divide', 1)
INSERT [dbo].[RateMaster] ([ID], [Convert_From], [Convert_To], [Rate], [Action], [Status]) VALUES (2, N'inches', N'centimeters', 2.54, N'Multiply', 1)
INSERT [dbo].[RateMaster] ([ID], [Convert_From], [Convert_To], [Rate], [Action], [Status]) VALUES (3, N'Squaremeter', N'SquareFoot', 10.764, N'Multiply', 1)
INSERT [dbo].[RateMaster] ([ID], [Convert_From], [Convert_To], [Rate], [Action], [Status]) VALUES (4, N'SquareFoot', N'Squaremeter', 10.764, N'Divide', 1)
INSERT [dbo].[RateMaster] ([ID], [Convert_From], [Convert_To], [Rate], [Action], [Status]) VALUES (5, N'Degree', N'Kelvin', 273.15, N'Addition', 1)
INSERT [dbo].[RateMaster] ([ID], [Convert_From], [Convert_To], [Rate], [Action], [Status]) VALUES (6, N'Kelvin', N'Degree', 273.15, N'Substraction', 1)
SET IDENTITY_INSERT [dbo].[RateMaster] OFF
GO
ALTER TABLE [dbo].[RateMaster] ADD  CONSTRAINT [DF_RateMaster_Status]  DEFAULT ((1)) FOR [Status]
GO
USE [master]
GO
ALTER DATABASE [Metric_Conversion] SET  READ_WRITE 
GO
