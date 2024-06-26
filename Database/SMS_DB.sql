USE [SMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_ToggleEnableStudent]    Script Date: 6/28/2024 1:00:42 PM ******/
DROP PROCEDURE [dbo].[sp_ToggleEnableStudent]
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchStudentsDetails]    Script Date: 6/28/2024 1:00:42 PM ******/
DROP PROCEDURE [dbo].[sp_SearchStudentsDetails]
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveStudent]    Script Date: 6/28/2024 1:00:42 PM ******/
DROP PROCEDURE [dbo].[sp_SaveStudent]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllStudentDetails]    Script Date: 6/28/2024 1:00:42 PM ******/
DROP PROCEDURE [dbo].[sp_GetAllStudentDetails]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteStudent]    Script Date: 6/28/2024 1:00:42 PM ******/
DROP PROCEDURE [dbo].[sp_DeleteStudent]
GO
/****** Object:  StoredProcedure [dbo].[GetOneStudentDetails]    Script Date: 6/28/2024 1:00:42 PM ******/
DROP PROCEDURE [dbo].[GetOneStudentDetails]
GO
ALTER TABLE [dbo].[Teacher_Subject_Allocation] DROP CONSTRAINT [FK__Teacher_S__Teach__797309D9]
GO
ALTER TABLE [dbo].[Teacher_Subject_Allocation] DROP CONSTRAINT [FK__Teacher_S__Subje__7A672E12]
GO
ALTER TABLE [dbo].[Student_Subject_Teacher_Allocation] DROP CONSTRAINT [FK__Student_S__Subje__7E37BEF6]
GO
ALTER TABLE [dbo].[Student_Subject_Teacher_Allocation] DROP CONSTRAINT [FK__Student_S__Stude__7F2BE32F]
GO
ALTER TABLE [dbo].[Teacher] DROP CONSTRAINT [DF__Teacher__IsEnabl__6FE99F9F]
GO
ALTER TABLE [dbo].[Subject] DROP CONSTRAINT [DF__Subject__IsEnabl__75A278F5]
GO
ALTER TABLE [dbo].[Student] DROP CONSTRAINT [DF__Student__IsEnabl__72C60C4A]
GO
/****** Object:  Index [UQ__Teacher___7733E37D94F17654]    Script Date: 6/28/2024 1:00:42 PM ******/
ALTER TABLE [dbo].[Teacher_Subject_Allocation] DROP CONSTRAINT [UQ__Teacher___7733E37D94F17654]
GO
/****** Object:  Index [UQ__Student___58646DF939E2A1D8]    Script Date: 6/28/2024 1:00:42 PM ******/
ALTER TABLE [dbo].[Student_Subject_Teacher_Allocation] DROP CONSTRAINT [UQ__Student___58646DF939E2A1D8]
GO
/****** Object:  Table [dbo].[Teacher_Subject_Allocation]    Script Date: 6/28/2024 1:00:42 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teacher_Subject_Allocation]') AND type in (N'U'))
DROP TABLE [dbo].[Teacher_Subject_Allocation]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 6/28/2024 1:00:42 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teacher]') AND type in (N'U'))
DROP TABLE [dbo].[Teacher]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 6/28/2024 1:00:42 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Subject]') AND type in (N'U'))
DROP TABLE [dbo].[Subject]
GO
/****** Object:  Table [dbo].[Student_Subject_Teacher_Allocation]    Script Date: 6/28/2024 1:00:42 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Subject_Teacher_Allocation]') AND type in (N'U'))
DROP TABLE [dbo].[Student_Subject_Teacher_Allocation]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/28/2024 1:00:42 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
DROP TABLE [dbo].[Student]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentRegNo]    Script Date: 6/28/2024 1:00:42 PM ******/
DROP FUNCTION [dbo].[fn_CheckStudentRegNo]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentName]    Script Date: 6/28/2024 1:00:42 PM ******/
DROP FUNCTION [dbo].[fn_CheckStudentName]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentEmail]    Script Date: 6/28/2024 1:00:42 PM ******/
DROP FUNCTION [dbo].[fn_CheckStudentEmail]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentAllocation]    Script Date: 6/28/2024 1:00:42 PM ******/
DROP FUNCTION [dbo].[fn_CheckStudentAllocation]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_CheckDisplayName]    Script Date: 6/28/2024 1:00:42 PM ******/
DROP FUNCTION [dbo].[FN_CheckDisplayName]
GO
USE [master]
GO
/****** Object:  Database [SMS_DB]    Script Date: 6/28/2024 1:00:42 PM ******/
DROP DATABASE [SMS_DB]
GO
/****** Object:  Database [SMS_DB]    Script Date: 6/28/2024 1:00:43 PM ******/
CREATE DATABASE [SMS_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SMS_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.VINUSHA\MSSQL\DATA\SMS_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SMS_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.VINUSHA\MSSQL\DATA\SMS_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SMS_DB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SMS_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SMS_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SMS_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SMS_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SMS_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SMS_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SMS_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SMS_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SMS_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SMS_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SMS_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SMS_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SMS_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SMS_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SMS_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SMS_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SMS_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SMS_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SMS_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SMS_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SMS_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SMS_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SMS_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SMS_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SMS_DB] SET  MULTI_USER 
GO
ALTER DATABASE [SMS_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SMS_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SMS_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SMS_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SMS_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SMS_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SMS_DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [SMS_DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SMS_DB]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_CheckDisplayName]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[FN_CheckDisplayName]
(
	@DisplayName NVARCHAR(20),
	@StdID BIGINT
)
RETURNS BIT
AS
BEGIN
    DECLARE @CheckDisplayName BIT;

	-- Ensure @StdID is not NULL
	IF @StdID IS NULL
	BEGIN
		SET @StdID = 0;
	END
	
	-- Ensure @DisplayName is not NULL
	IF @DisplayName IS NULL
	BEGIN
		RETURN 0;
	END

    -- Check for existing DisplayName with a different StudentID
    IF EXISTS (SELECT 1 FROM Student WHERE DisplayName = @DisplayName AND StudentID <> @StdID)
    BEGIN
        SET @CheckDisplayName = 0;
    END
    ELSE
    BEGIN
        SET @CheckDisplayName = 1;
    END

    RETURN @CheckDisplayName;
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentAllocation]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_CheckStudentAllocation]
(
    @StudentID BIGINT
)
RETURNS BIT
AS
BEGIN
    DECLARE @IsAllocated BIT;

    IF EXISTS (SELECT 1 FROM Student_Subject_Teacher_Allocation WHERE StudentID = @StudentID)
    BEGIN
        SET @IsAllocated = 1;
    END
    ELSE
    BEGIN
        SET @IsAllocated = 0;
    END

    RETURN @IsAllocated;
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentEmail]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[fn_CheckStudentEmail]
(
    @StudentID BIGINT,
    @Email NVARCHAR(30)
)
RETURNS BIT
AS
BEGIN
    DECLARE @Exists BIT;
    SELECT @Exists = CASE WHEN EXISTS (SELECT 1 FROM Student WHERE Email = @Email AND(@StudentID IS NULL OR StudentID != @StudentID)) THEN 1 ELSE 0 END;
    RETURN @Exists;
END;
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentName]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[fn_CheckStudentName]
(
    @StudentID BIGINT,
    @DisplayName NVARCHAR(50)
)
RETURNS BIT
AS
BEGIN
    DECLARE @Exists BIT;
    SELECT @Exists = CASE 
        WHEN EXISTS (SELECT 1 FROM Student WHERE DisplayName = @DisplayName AND (@StudentID IS NULL OR StudentID != @StudentID)) 
        THEN 1 ELSE 0 
    END;
    RETURN @Exists;
END;
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentRegNo]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[fn_CheckStudentRegNo]
(
    @StudentID BIGINT,
    @StudentRegNo NVARCHAR(10)
)
RETURNS BIT
AS
BEGIN
    DECLARE @Exists BIT;
    SELECT @Exists = CASE 
        WHEN EXISTS (SELECT 1 FROM Student WHERE StudentRegNo = @StudentRegNo AND (@StudentID IS NULL OR StudentID != @StudentID)) 
        THEN 1 ELSE 0 
    END;
    RETURN @Exists;
END;
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [bigint] IDENTITY(1,1) NOT NULL,
	[StudentRegNo] [nvarchar](10) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[MiddleName] [nvarchar](20) NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[DisplayName] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[DOB] [date] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[ContactNo] [nvarchar](15) NOT NULL,
	[IsEnable] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Subject_Teacher_Allocation]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Subject_Teacher_Allocation](
	[StudentAllocationID] [bigint] IDENTITY(1,1) NOT NULL,
	[StudentID] [bigint] NOT NULL,
	[SubjectAllocationID] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentAllocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [bigint] IDENTITY(1,1) NOT NULL,
	[SubjectCode] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsEnable] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherID] [bigint] IDENTITY(1,1) NOT NULL,
	[TeacherRegNo] [nvarchar](10) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[MiddleName] [nvarchar](20) NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[DisplayName] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[DOB] [date] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[ContactNo] [nvarchar](15) NOT NULL,
	[IsEnable] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Subject_Allocation]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Subject_Allocation](
	[SubjectAllocationID] [bigint] IDENTITY(1,1) NOT NULL,
	[TeacherID] [bigint] NOT NULL,
	[SubjectID] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectAllocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10012, N'STD1002', N'Jane', N'Elizabeth', N'Doe', N'Jane Doe	', N'jane.doe@example.com', N'Female', CAST(N'2001-01-18' AS Date), N'456 Oak St, Springfield, IL	', N'555-234-5678', 1)
INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10013, N'STD1003', N'Robert', N'James', N'Johnson', N'Robert Johnson	', N'robert.johnson@gmail.com', N'Female', CAST(N'2002-03-20' AS Date), N'789 Pine St, Springfield, IL	', N'555-345-6789', 1)
INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (40014, N'STD10011', N'fdjfj', N'uwfji', N'wiejwdij', N'ndjc', N'dsh@gmail.com', N'Male', CAST(N'1899-01-12' AS Date), N'jdsnfj', N'2313', 1)
INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (40015, N'STD12090', N'dsjds', N'djcdj', N'jssk', N'oasoa', N'jcx@gmail.com', N'Female', CAST(N'1899-01-11' AS Date), N'jdsnfj', N'2313', 1)
INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (50016, N'dokfk', N'dfsnkdj', N'dkmkd', N'adiw', N'dksadded', N'sd@gmail.cm', N'Female', CAST(N'2001-01-10' AS Date), N'sdew', N'233423', 0)
INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (50017, N'STD10012', N'dsjhds', N'dfjfh', N'dfkvjjfdh', N'dsjfhhg', N'cgsd@gmail.coms', N'Female', CAST(N'2001-01-23' AS Date), N'dsadsd', N'21312', 0)
INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (50018, N'STD1002ds', N'sdsddwde', N'sdfd', N'dfkvjjfdh', N'dsjfhhgew', N'cgsd@gmail.comse', N'Female', CAST(N'2001-01-10' AS Date), N'dsadsd', N'21312', 0)
INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (50019, N'sdsf', N'ff', N'trt', N'qwere', N'rgtr', N'dsh@gmail.comff', N'Male', CAST(N'2001-01-09' AS Date), N'reter', N'2134', 0)
INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (50020, N'dsff', N'dsf', N'dsfddg', N'fgdg', N'Robert Johnson', N'asfd@gmail.com', N'Male', CAST(N'2001-01-09' AS Date), N'gfh', N'gfh', 0)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Student_Subject_Teacher_Allocation] ON 

INSERT [dbo].[Student_Subject_Teacher_Allocation] ([StudentAllocationID], [StudentID], [SubjectAllocationID]) VALUES (30039, 10012, 10042)
INSERT [dbo].[Student_Subject_Teacher_Allocation] ([StudentAllocationID], [StudentID], [SubjectAllocationID]) VALUES (30040, 10012, 10047)
INSERT [dbo].[Student_Subject_Teacher_Allocation] ([StudentAllocationID], [StudentID], [SubjectAllocationID]) VALUES (30041, 10013, 10046)
SET IDENTITY_INSERT [dbo].[Student_Subject_Teacher_Allocation] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (36, N'MATH101', N'Calculus ', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (37, N'ENG102', N'English Literature', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (38, N'CS103', N'Introduction to Programming', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (40, N'CHEM105', N'Organic Chemistry', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (41, N'PHYS106', N'Physics ', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (42, N'HIST107', N'History', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (43, N'ECON109', N'Microeconomics', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (44, N'SOC110', N'Sociology', 0)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (20034, N'S3283', N'dnsbfjh', 0)
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10037, N'TR2001', N'Alice', N'Margaret', N'Johnson', N'Alice Johnson	', N'alice.johnson@gmail.com', N'Female', CAST(N'1990-01-09' AS Date), N'100 Park Ave, Springfield, IL	', N'555-234-5678', 1)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10038, N'TR2002', N'Brian', N'Charles', N'Smith', N'Brian Smith	', N'brian.smith@gmail.com', N'Male', CAST(N'1989-06-16' AS Date), N'101 Park Ave, Springfield, IL	', N'555-345-6789', 1)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10040, N'TR2004', N'David', N'Edward', N'Wilson', N'David Wilson	', N'david.wilson@gmail.com', N'Male', CAST(N'1986-02-12' AS Date), N'103 Park Ave, Springfield, IL	', N'555-567-8901', 1)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10041, N'TR2005', N'Emma', N'Louise', N'Taylor', N'Emma Taylor	', N'emma.taylor@gmail.com', N'Female', CAST(N'1988-03-17' AS Date), N'104 Park Ave, Springfield, IL	', N'555-678-9012', 1)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10042, N'TR2006', N'Frank', N'Henry', N'Anderson', N'Frank Anderson	', N'frank.anderson@gmail.com', N'Male', CAST(N'1992-05-18' AS Date), N'105 Park Ave, Springfield, IL	', N'555-789-0123', 1)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10043, N'TR2007', N'Grace', N'Marie', N'Thomas', N'Grace Thomas	', N'grace.thomas@gmail.com', N'Female', CAST(N'1991-08-13' AS Date), N'106 Park Ave, Springfield, IL	', N'555-890-1234', 1)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10044, N'TR2008', N'Henry', N'Samuel', N'Jackson', N'Henry Jackson	', N'henry.jackson@gmail.com', N'Male', CAST(N'1995-03-03' AS Date), N'107 Park Ave, Springfield, IL	', N'555-901-2345', 1)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher_Subject_Allocation] ON 

INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10042, 10037, 37)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10043, 10037, 41)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10050, 10037, 43)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10045, 10038, 41)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10051, 10040, 37)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10046, 10040, 40)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10047, 10041, 38)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10049, 10043, 43)
SET IDENTITY_INSERT [dbo].[Teacher_Subject_Allocation] OFF
GO
/****** Object:  Index [UQ__Student___58646DF939E2A1D8]    Script Date: 6/28/2024 1:00:43 PM ******/
ALTER TABLE [dbo].[Student_Subject_Teacher_Allocation] ADD UNIQUE NONCLUSTERED 
(
	[StudentID] ASC,
	[SubjectAllocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Teacher___7733E37D94F17654]    Script Date: 6/28/2024 1:00:43 PM ******/
ALTER TABLE [dbo].[Teacher_Subject_Allocation] ADD UNIQUE NONCLUSTERED 
(
	[TeacherID] ASC,
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student] ADD  DEFAULT ((1)) FOR [IsEnable]
GO
ALTER TABLE [dbo].[Subject] ADD  DEFAULT ((1)) FOR [IsEnable]
GO
ALTER TABLE [dbo].[Teacher] ADD  DEFAULT ((1)) FOR [IsEnable]
GO
ALTER TABLE [dbo].[Student_Subject_Teacher_Allocation]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Student_Subject_Teacher_Allocation]  WITH CHECK ADD FOREIGN KEY([SubjectAllocationID])
REFERENCES [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID])
GO
ALTER TABLE [dbo].[Teacher_Subject_Allocation]  WITH CHECK ADD FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[Teacher_Subject_Allocation]  WITH CHECK ADD FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([TeacherID])
GO
/****** Object:  StoredProcedure [dbo].[GetOneStudentDetails]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetOneStudentDetails]
	@StudentID INT
AS
Begin
	set nocount on;

	select* from Student
	where StudentID=@StudentID;

END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteStudent]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[sp_DeleteStudent]
    @StudentID BIGINT,
    @IsDeleted BIT OUTPUT,
    @ErrorMessage NVARCHAR(255) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

	DECLARE @IsAllocated BIT;
    
    -- Call the validation function
	SET @IsAllocated=dbo.fn_CheckStudentAllocation(@StudentID);
    
    -- Check for validation errors
    IF @IsAllocated=1
    BEGIN
        SET @IsDeleted = 0;
        SET @ErrorMessage = 'This student is allocated for subject';
        RETURN;
    END
	ELSE
    -- Proceed with deletion if no validation errors
    BEGIN
        
        DELETE FROM Student WHERE StudentID = @StudentID;

        SET @IsDeleted = 1;
        SET @ErrorMessage = 'Student Deleted successfully';
    END     
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllStudentDetails]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[sp_GetAllStudentDetails]
	@PageNo INT,
    @PageSize INT,
    @IsActive BIT = NULL,
    @TotalPage INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Offset INT = (@PageNo - 1) * @PageSize;
    
    SELECT *
    FROM Student
    WHERE (@IsActive IS NULL OR IsEnable = @IsActive)
    ORDER BY StudentID
    OFFSET @Offset ROWS
    FETCH NEXT @PageSize ROWS ONLY;

    -- Calculate total pages
    DECLARE @TotalRecords INT;
    SELECT @TotalRecords = COUNT(*)
    FROM Student
    WHERE (@IsActive IS NULL OR IsEnable = @IsActive);

    SET @TotalPage = CEILING(CAST(@TotalRecords AS FLOAT) / @PageSize);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveStudent]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_SaveStudent]
    @StudentID BIGINT NULL,
    @StudentRegNo NVARCHAR(10),
    @FirstName NVARCHAR(20),
    @MiddleName NVARCHAR(20),
    @LastName NVARCHAR(20),
    @DisplayName NVARCHAR(20),
    @Email NVARCHAR(30),
    @Gender NVARCHAR(10),
    @DOB DATE,
    @Address NVARCHAR(50),
    @ContactNo NVARCHAR(15),
    @IsEnable BIT,
    @ErrorMessage NVARCHAR(255) OUTPUT,
    @Success BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    -- Initialize the output parameters
    SET @ErrorMessage = NULL;
    SET @Success = 0;

    -- Check if the student registration number already exists
    IF dbo.fn_CheckStudentRegNo(@StudentID, @StudentRegNo) = 1
    BEGIN
        SET @ErrorMessage = 'Student registration number already exists.';
        RETURN;
    END

    -- Check if the student display name already exists
    IF dbo.fn_CheckStudentName(@StudentID, @DisplayName) = 1
    BEGIN
        SET @ErrorMessage = 'Student display name already exists.';
        RETURN;
    END

    -- Check if the student email already exists
    IF dbo.fn_CheckStudentEmail(@StudentID, @Email) = 1
    BEGIN
        SET @ErrorMessage = 'Student email address already exists.';
        RETURN;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Check if the student already exists (for update)
        IF EXISTS (SELECT 1 FROM Student WHERE StudentID = @StudentID)
        BEGIN
            -- Update existing student
            UPDATE Student
            SET StudentRegNo = @StudentRegNo,
                FirstName = @FirstName,
                MiddleName = @MiddleName,
                LastName = @LastName,
                DisplayName = @DisplayName,
                Email = @Email,
                Gender = @Gender,
                DOB = @DOB,
                Address = @Address,
                ContactNo = @ContactNo,
                IsEnable = @IsEnable
            WHERE StudentID = @StudentID;

            SET @ErrorMessage = 'Student updated successfully.';
        END
        ELSE
        BEGIN
            -- Insert new student
            INSERT INTO Student (StudentRegNo, FirstName, MiddleName, LastName, DisplayName, Email, Gender, DOB, Address, ContactNo, IsEnable)
            VALUES (@StudentRegNo, @FirstName, @MiddleName, @LastName, @DisplayName, @Email, @Gender, @DOB, @Address, @ContactNo, @IsEnable);

            SET @ErrorMessage = 'Student added successfully.';
        END

        COMMIT TRANSACTION;
        SET @Success = 1;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        SET @ErrorMessage = ERROR_MESSAGE();
        SET @Success = 0;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchStudentsDetails]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	Searches for students based on a specified category and search term.
-- =============================================
CREATE PROCEDURE [dbo].[sp_SearchStudentsDetails]
    @Category NVARCHAR(50),
    @Term NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SQL NVARCHAR(MAX);

    -- Construct the base SQL query
    SET @SQL = N'SELECT * FROM Student WHERE ';

    ---- Determine the condition based on the category
    IF @Category = 'StudentRegNo'
    BEGIN
        SET @SQL = @SQL + N'UPPER(StudentRegNo) LIKE @SearchTerm';
    END
    ELSE IF @Category = 'DisplayName'
    BEGIN
        SET @SQL = @SQL + N'UPPER(DisplayName) LIKE @SearchTerm';
    END
     ELSE
    BEGIN
        SET @SQL = @SQL + N'UPPER(StudentRegNo) LIKE @SearchTerm OR UPPER(DisplayName) LIKE @SearchTerm';
    END

    SET @Term = '%' + @Term + '%';

    EXEC sp_executesql @SQL, N'@SearchTerm NVARCHAR(255)', @SearchTerm = @Term;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ToggleEnableStudent]    Script Date: 6/28/2024 1:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        <Author,,Name>
-- Create date:   <Create Date,,>
-- Description:   Toggle the IsEnable status of a student
-- =============================================
CREATE PROCEDURE [dbo].[sp_ToggleEnableStudent]
    @StudentID BIGINT,
    @IsEnable BIT,
    @ErrorMessage NVARCHAR(255) OUTPUT,
    @Success BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    -- Initialize the output parameters
    SET @ErrorMessage = NULL;
    SET @Success = 0;

    BEGIN TRY
        -- Check if the student exists
        IF EXISTS (SELECT 1 FROM Student WHERE StudentID = @StudentID)
        BEGIN
            -- Update the IsEnable status of the student
            UPDATE Student
            SET IsEnable = @IsEnable
            WHERE StudentID = @StudentID;

			DECLARE @DisplayName NVARCHAR(50);
			SELECT @DisplayName = DisplayName FROM Student WHERE StudentID = @StudentID;

            -- Set the success message and success flag
            IF @IsEnable = 1
                SET @ErrorMessage = 'Student '+@DisplayName+' successfully enabled!';
            ELSE
                SET @ErrorMessage = 'Student '+@DisplayName+' successfully disabled!';
                
            SET @Success = 1;
        END
        ELSE
        BEGIN
            SET @ErrorMessage = 'Student not found!';
        END
    END TRY
    BEGIN CATCH
        SET @ErrorMessage = ERROR_MESSAGE();
    END CATCH
END;

GO
USE [master]
GO
ALTER DATABASE [SMS_DB] SET  READ_WRITE 
GO
