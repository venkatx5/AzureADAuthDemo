USE [master]
GO
/****** Object:  Database [Fabrikam]    Script Date: 6/5/2019 4:40:31 PM ******/
CREATE DATABASE [Fabrikam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Fabrikam', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.BOOTCAMP\MSSQL\DATA\Fabrikam.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Fabrikam_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.BOOTCAMP\MSSQL\DATA\Fabrikam_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Fabrikam] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Fabrikam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Fabrikam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Fabrikam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Fabrikam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Fabrikam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Fabrikam] SET ARITHABORT OFF 
GO
ALTER DATABASE [Fabrikam] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Fabrikam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Fabrikam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Fabrikam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Fabrikam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Fabrikam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Fabrikam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Fabrikam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Fabrikam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Fabrikam] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Fabrikam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Fabrikam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Fabrikam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Fabrikam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Fabrikam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Fabrikam] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Fabrikam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Fabrikam] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Fabrikam] SET  MULTI_USER 
GO
ALTER DATABASE [Fabrikam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Fabrikam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Fabrikam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Fabrikam] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Fabrikam] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Fabrikam]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 6/5/2019 4:40:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Body] [nvarchar](4000) NOT NULL,
	[Title] [nvarchar](4000) NOT NULL,
	[Image] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/5/2019 4:40:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](32) NOT NULL,
	[LastName] [varchar](32) NOT NULL,
	[Major] [varchar](64) NULL,
 CONSTRAINT [PK_dbo_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UC_dbo_Student_FirstName_LastName] UNIQUE NONCLUSTERED 
(
	[FirstName] ASC,
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Fabrikam] SET  READ_WRITE 
GO
