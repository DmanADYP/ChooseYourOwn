USE [master]
GO
/****** Object:  Database [ChooseYouOwn]    Script Date: 8/17/2016 8:28:09 AM ******/
CREATE DATABASE [ChooseYouOwn]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChooseYouOwn', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.VIRTUSA\MSSQL\DATA\ChooseYouOwn.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ChooseYouOwn_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.VIRTUSA\MSSQL\DATA\ChooseYouOwn_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ChooseYouOwn] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChooseYouOwn].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChooseYouOwn] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ChooseYouOwn] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChooseYouOwn] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChooseYouOwn] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChooseYouOwn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChooseYouOwn] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET RECOVERY FULL 
GO
ALTER DATABASE [ChooseYouOwn] SET  MULTI_USER 
GO
ALTER DATABASE [ChooseYouOwn] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChooseYouOwn] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChooseYouOwn] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChooseYouOwn] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ChooseYouOwn', N'ON'
GO
USE [ChooseYouOwn]
GO
/****** Object:  Table [dbo].[Adventure]    Script Date: 8/17/2016 8:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Adventure](
	[AdventureID] [int] IDENTITY(1,1) NOT NULL,
	[Adventure] [varchar](255) NULL,
	[AdventureLevel] [int] NULL,
 CONSTRAINT [PK_Adventure] PRIMARY KEY CLUSTERED 
(
	[AdventureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChoicesCard]    Script Date: 8/17/2016 8:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChoicesCard](
	[ChoicesID] [int] IDENTITY(1,1) NOT NULL,
	[ChoicesCard] [varchar](255) NULL,
	[ChoicesCardLevel] [int] NULL,
 CONSTRAINT [PK_ChoicesCard] PRIMARY KEY CLUSTERED 
(
	[ChoicesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChooseYourOwnFKTable]    Script Date: 8/17/2016 8:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChooseYourOwnFKTable](
	[UserID] [int] NULL,
	[PasswordID] [int] NULL,
	[ProgressID] [int] NULL,
	[EquipmentID] [int] NULL,
	[AdventureID] [int] NULL,
	[RandomEventCardID] [int] NULL,
	[ChoicesID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 8/17/2016 8:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Equipment](
	[EquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[Equipment] [varchar](255) NULL,
	[EquipmentLevel] [int] NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[EquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Password]    Script Date: 8/17/2016 8:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Password](
	[PasswordID] [int] IDENTITY(1,1) NOT NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Password] PRIMARY KEY CLUSTERED 
(
	[PasswordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Progress]    Script Date: 8/17/2016 8:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Progress](
	[ProgressID] [int] IDENTITY(1,1) NOT NULL,
	[Progress] [varchar](50) NULL,
 CONSTRAINT [PK_Progress] PRIMARY KEY CLUSTERED 
(
	[ProgressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RandomEventCard]    Script Date: 8/17/2016 8:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RandomEventCard](
	[RandomEventCardID] [int] IDENTITY(1,1) NOT NULL,
	[RandomEventCard] [varchar](255) NULL,
	[RandomEventCardLevel] [int] NULL,
 CONSTRAINT [PK_RandomEventCard] PRIMARY KEY CLUSTERED 
(
	[RandomEventCardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/17/2016 8:28:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[User] [varchar](50) NULL,
	[NickName] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [ChooseYouOwn] SET  READ_WRITE 
GO
