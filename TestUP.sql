USE [master]
GO
/****** Object:  Database [TestUP]    Script Date: 9/14/2021 5:06:43 PM ******/
CREATE DATABASE [TestUP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestUP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER12\MSSQL\DATA\TestUP.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TestUP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER12\MSSQL\DATA\TestUP_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TestUP] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestUP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestUP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestUP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestUP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestUP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestUP] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestUP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestUP] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TestUP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestUP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestUP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestUP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestUP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestUP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestUP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestUP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestUP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TestUP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestUP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestUP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestUP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestUP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestUP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TestUP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestUP] SET RECOVERY FULL 
GO
ALTER DATABASE [TestUP] SET  MULTI_USER 
GO
ALTER DATABASE [TestUP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestUP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestUP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestUP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TestUP', N'ON'
GO
USE [TestUP]
GO
/****** Object:  StoredProcedure [dbo].[getTables]    Script Date: 9/14/2021 5:06:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getTables]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from dbo.tableHierarchy;
END

GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 9/14/2021 5:06:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[column1] [int] NOT NULL,
	[column2] [nchar](10) NULL,
	[column3] [nchar](10) NULL,
	[column4] [nchar](10) NULL,
	[column5] [nchar](10) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[column1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_2]    Script Date: 9/14/2021 5:06:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_2](
	[column1] [int] NOT NULL,
	[column1t1] [int] NOT NULL,
	[column2] [nchar](10) NULL,
	[column3] [nchar](10) NULL,
	[column4] [nchar](10) NULL,
	[column5] [nchar](10) NULL,
 CONSTRAINT [PK_Table_2] PRIMARY KEY CLUSTERED 
(
	[column1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_3]    Script Date: 9/14/2021 5:06:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_3](
	[column1] [int] NOT NULL,
	[column1t2] [int] NOT NULL,
	[column2] [nchar](10) NULL,
	[column3] [nchar](10) NULL,
	[column4] [nchar](10) NULL,
	[column5] [nchar](10) NULL,
	[column6] [nchar](10) NULL,
 CONSTRAINT [PK_Table_3] PRIMARY KEY CLUSTERED 
(
	[column1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_4]    Script Date: 9/14/2021 5:06:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_4](
	[column1] [int] NOT NULL,
	[column1t1] [int] NOT NULL,
	[column2] [nchar](10) NULL,
	[column3] [nchar](10) NULL,
	[column4] [nchar](10) NULL,
	[column5] [nchar](10) NULL,
 CONSTRAINT [PK_Table_4] PRIMARY KEY CLUSTERED 
(
	[column1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[tableHierarchy]    Script Date: 9/14/2021 5:06:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[tableHierarchy] as
WITH dependencies -- Get object with FK dependencies
AS (
    SELECT FK.TABLE_NAME AS Obj
        , PK.TABLE_NAME AS Depends
    FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS C
    INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS FK
        ON C.CONSTRAINT_NAME = FK.CONSTRAINT_NAME
    INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS PK
        ON C.UNIQUE_CONSTRAINT_NAME = PK.CONSTRAINT_NAME
    ), 
no_dependencies -- The first level are objects with no dependencies 
AS (
    SELECT 
        name AS Obj
    FROM sys.objects
    WHERE name NOT IN (SELECT obj FROM dependencies) --we remove objects with dependencies from first CTE
    AND type = 'U' -- Just tables
    ), 
recursiv -- recursive CTE to get dependencies
AS (
    SELECT Obj AS [Table]
        , CAST('' AS VARCHAR(max)) AS DependsON
        , 0 AS LVL -- Level 0 indicate tables with no dependencies
    FROM no_dependencies
 
    UNION ALL
 
    SELECT d.Obj AS [Table]
        , CAST(IIF(LVL > 0, r.DependsON + ',', '') + d.Depends AS VARCHAR(max)) -- visually reflects hierarchy
        , R.lvl + 1 AS LVL
    FROM dependencies d
    INNER JOIN recursiv r
        ON d.Depends = r.[Table]
    )
-- The final result, with some extra fields for more information
SELECT DISTINCT  ROW_NUMBER() OVER(ORDER BY (SELECT 1)) AS ID, SCHEMA_NAME(O.schema_id) AS [TableSchema]
    , R.[Table]
    , R.DependsON
    , R.LVL
FROM recursiv R
INNER JOIN sys.objects O
    ON R.[Table] = O.name


GO
ALTER TABLE [dbo].[Table_2]  WITH CHECK ADD  CONSTRAINT [FK_Table_2_Table_1] FOREIGN KEY([column1t1])
REFERENCES [dbo].[Table_1] ([column1])
GO
ALTER TABLE [dbo].[Table_2] CHECK CONSTRAINT [FK_Table_2_Table_1]
GO
ALTER TABLE [dbo].[Table_3]  WITH CHECK ADD  CONSTRAINT [FK_Table_3_Table_2] FOREIGN KEY([column1t2])
REFERENCES [dbo].[Table_2] ([column1])
GO
ALTER TABLE [dbo].[Table_3] CHECK CONSTRAINT [FK_Table_3_Table_2]
GO
ALTER TABLE [dbo].[Table_4]  WITH CHECK ADD  CONSTRAINT [FK_Table_4_Table_1] FOREIGN KEY([column1t1])
REFERENCES [dbo].[Table_1] ([column1])
GO
ALTER TABLE [dbo].[Table_4] CHECK CONSTRAINT [FK_Table_4_Table_1]
GO
USE [master]
GO
ALTER DATABASE [TestUP] SET  READ_WRITE 
GO
