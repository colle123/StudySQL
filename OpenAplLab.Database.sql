USE [master]
GO
/****** Object:  Database [OpenAplLab]    Script Date: 2022-06-11 오전 11:42:58 ******/
CREATE DATABASE [OpenAplLab]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OpenAplLab', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\OpenAplLab.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OpenAplLab_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\OpenAplLab_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [OpenAplLab] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OpenAplLab].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OpenAplLab] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OpenAplLab] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OpenAplLab] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OpenAplLab] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OpenAplLab] SET ARITHABORT OFF 
GO
ALTER DATABASE [OpenAplLab] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OpenAplLab] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OpenAplLab] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OpenAplLab] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OpenAplLab] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OpenAplLab] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OpenAplLab] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OpenAplLab] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OpenAplLab] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OpenAplLab] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OpenAplLab] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OpenAplLab] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OpenAplLab] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OpenAplLab] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OpenAplLab] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OpenAplLab] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OpenAplLab] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OpenAplLab] SET RECOVERY FULL 
GO
ALTER DATABASE [OpenAplLab] SET  MULTI_USER 
GO
ALTER DATABASE [OpenAplLab] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OpenAplLab] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OpenAplLab] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OpenAplLab] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OpenAplLab] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'OpenAplLab', N'ON'
GO
ALTER DATABASE [OpenAplLab] SET QUERY_STORE = OFF
GO
USE [OpenAplLab]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE [OpenAplLab] SET  READ_WRITE 
GO
