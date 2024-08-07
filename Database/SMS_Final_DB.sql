USE [SMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpsertSubjectAllocation]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_UpsertSubjectAllocation]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpsertSubject]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_UpsertSubject]
GO
/****** Object:  StoredProcedure [dbo].[sp_ToggleEnableTeacher]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_ToggleEnableTeacher]
GO
/****** Object:  StoredProcedure [dbo].[sp_ToggleEnableSubject]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_ToggleEnableSubject]
GO
/****** Object:  StoredProcedure [dbo].[sp_ToggleEnableStudent]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_ToggleEnableStudent]
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchTeachersDetails]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_SearchTeachersDetails]
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchSubjectAllocations]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_SearchSubjectAllocations]
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchSubject]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_SearchSubject]
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchStudentsDetails]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_SearchStudentsDetails]
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchStudentAllocation]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_SearchStudentAllocation]
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveTeacher]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_SaveTeacher]
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveStudent]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_SaveStudent]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSubjectDetails]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetSubjectDetails]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSubjectAllocationsGroupedByTeacher]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetSubjectAllocationsGroupedByTeacher]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSubjectAllocation]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetSubjectAllocation]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNLogDataByLevel]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetNLogDataByLevel]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNLogData]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetNLogData]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLogsCountsbyFilter]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetLogsCountsbyFilter]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLogsByDateRange]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetLogsByDateRange]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLogLevelCounts]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetLogLevelCounts]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLogCountsByMonth]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetLogCountsByMonth]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDailyLogCounts]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetDailyLogCounts]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllTeachersForSubject]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetAllTeachersForSubject]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllTeacherDetails]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetAllTeacherDetails]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllSubjectAllocation]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetAllSubjectAllocation]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllSubject]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetAllSubject]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllStudentDetails]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetAllStudentDetails]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllStudentAllocation]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetAllStudentAllocation]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllAllocatedSubject]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_GetAllAllocatedSubject]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteTeacher]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_DeleteTeacher]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteSubjectAllocation]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_DeleteSubjectAllocation]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteSubject]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_DeleteSubject]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteStudentAllocation]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_DeleteStudentAllocation]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteStudent]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_DeleteStudent]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddStudentAllocation]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[sp_AddStudentAllocation]
GO
/****** Object:  StoredProcedure [dbo].[GetOneTeacherDetails]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP PROCEDURE [dbo].[GetOneTeacherDetails]
GO
/****** Object:  StoredProcedure [dbo].[GetOneStudentDetails]    Script Date: 7/19/2024 11:32:42 AM ******/
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
/****** Object:  Index [UQ__Teacher___7733E37D94F17654]    Script Date: 7/19/2024 11:32:42 AM ******/
ALTER TABLE [dbo].[Teacher_Subject_Allocation] DROP CONSTRAINT [UQ__Teacher___7733E37D94F17654]
GO
/****** Object:  Index [UQ__Student___58646DF939E2A1D8]    Script Date: 7/19/2024 11:32:42 AM ******/
ALTER TABLE [dbo].[Student_Subject_Teacher_Allocation] DROP CONSTRAINT [UQ__Student___58646DF939E2A1D8]
GO
/****** Object:  Table [dbo].[Teacher_Subject_Allocation]    Script Date: 7/19/2024 11:32:42 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teacher_Subject_Allocation]') AND type in (N'U'))
DROP TABLE [dbo].[Teacher_Subject_Allocation]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 7/19/2024 11:32:42 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teacher]') AND type in (N'U'))
DROP TABLE [dbo].[Teacher]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 7/19/2024 11:32:42 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Subject]') AND type in (N'U'))
DROP TABLE [dbo].[Subject]
GO
/****** Object:  Table [dbo].[Student_Subject_Teacher_Allocation]    Script Date: 7/19/2024 11:32:42 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Subject_Teacher_Allocation]') AND type in (N'U'))
DROP TABLE [dbo].[Student_Subject_Teacher_Allocation]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/19/2024 11:32:42 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
DROP TABLE [dbo].[Student]
GO
/****** Object:  Table [dbo].[LogTable]    Script Date: 7/19/2024 11:32:42 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogTable]') AND type in (N'U'))
DROP TABLE [dbo].[LogTable]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_IsSubjectAllocationInUse]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP FUNCTION [dbo].[FN_IsSubjectAllocationInUse]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckTeacherRegNo]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP FUNCTION [dbo].[fn_CheckTeacherRegNo]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckTeacherName]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP FUNCTION [dbo].[fn_CheckTeacherName]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckTeacherEmail]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP FUNCTION [dbo].[fn_CheckTeacherEmail]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckTeacherAllocation]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP FUNCTION [dbo].[fn_CheckTeacherAllocation]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_CheckSubjectName]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP FUNCTION [dbo].[FN_CheckSubjectName]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_CheckSubjectCode]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP FUNCTION [dbo].[FN_CheckSubjectCode]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_CheckSubjectAllocation]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP FUNCTION [dbo].[FN_CheckSubjectAllocation]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_CheckSubjectAllocated]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP FUNCTION [dbo].[FN_CheckSubjectAllocated]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentRegNo]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP FUNCTION [dbo].[fn_CheckStudentRegNo]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentName]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP FUNCTION [dbo].[fn_CheckStudentName]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentEmail]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP FUNCTION [dbo].[fn_CheckStudentEmail]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_CheckStudentAllocationExsist]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP FUNCTION [dbo].[FN_CheckStudentAllocationExsist]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentAllocation]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP FUNCTION [dbo].[fn_CheckStudentAllocation]
GO
USE [master]
GO
/****** Object:  Database [SMS_DB]    Script Date: 7/19/2024 11:32:42 AM ******/
DROP DATABASE [SMS_DB]
GO
/****** Object:  Database [SMS_DB]    Script Date: 7/19/2024 11:32:42 AM ******/
CREATE DATABASE [SMS_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SMS_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.VINUSHA\MSSQL\DATA\SMS_DB.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
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
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentAllocation]    Script Date: 7/19/2024 11:32:42 AM ******/
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
/****** Object:  UserDefinedFunction [dbo].[FN_CheckStudentAllocationExsist]    Script Date: 7/19/2024 11:32:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[FN_CheckStudentAllocationExsist]
(
    @StudentID BIGINT,
	@SubjectAllocationID BIGINT
)
RETURNS BIT
AS
BEGIN
    DECLARE @IsAllocated BIT;

    IF EXISTS (SELECT 1 FROM Student_Subject_Teacher_Allocation WHERE StudentID = @StudentID and SubjectAllocationID=@SubjectAllocationID)
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
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentEmail]    Script Date: 7/19/2024 11:32:42 AM ******/
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
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentName]    Script Date: 7/19/2024 11:32:42 AM ******/
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
/****** Object:  UserDefinedFunction [dbo].[fn_CheckStudentRegNo]    Script Date: 7/19/2024 11:32:42 AM ******/
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
/****** Object:  UserDefinedFunction [dbo].[FN_CheckSubjectAllocated]    Script Date: 7/19/2024 11:32:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[FN_CheckSubjectAllocated]
(
    @SubjectID BIGINT
)
RETURNS BIT
AS
BEGIN
    DECLARE @IsAllocated BIT;

    IF EXISTS (SELECT 1 FROM Teacher_Subject_Allocation WHERE SubjectID = @SubjectID)
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
/****** Object:  UserDefinedFunction [dbo].[FN_CheckSubjectAllocation]    Script Date: 7/19/2024 11:32:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FN_CheckSubjectAllocation]
(
    @SubjectID BIGINT,
	@TeacherID BIGINT
)
RETURNS BIT
AS
BEGIN
    DECLARE @IsAllocated BIT;

    IF EXISTS (SELECT 1 FROM Teacher_Subject_Allocation WHERE SubjectID = @SubjectID and TeacherID=@TeacherID)
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
/****** Object:  UserDefinedFunction [dbo].[FN_CheckSubjectCode]    Script Date: 7/19/2024 11:32:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[FN_CheckSubjectCode]
(
	@SubjectCode NVARCHAR(20),
	@SubjectID BIGINT
)
RETURNS BIT
AS
BEGIN
	
	IF @SubjectID IS NULL
	BEGIN
		SET @SubjectID = 0;
	END

    DECLARE @CheckSubjectCode BIT;

    IF EXISTS (SELECT 1 FROM Subject WHERE SubjectCode = @SubjectCode AND SubjectID<>@SubjectID)
    BEGIN
        SET @CheckSubjectCode = 0;
    END
    ELSE
    BEGIN
        SET @CheckSubjectCode = 1;
    END

    RETURN @CheckSubjectCode;
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_CheckSubjectName]    Script Date: 7/19/2024 11:32:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[FN_CheckSubjectName]
(
	@SubjectName NVARCHAR(20),
	@SubjectID BIGINT
)
RETURNS BIT
AS
BEGIN
	
	IF @SubjectID IS NULL
	BEGIN
		SET @SubjectID = 0;
	END

    DECLARE @CheckSubjectName BIT;

    IF EXISTS (SELECT 1 FROM Subject WHERE Name = @SubjectName AND SubjectID<>@SubjectID)
    BEGIN
        SET @CheckSubjectName = 0;
    END
    ELSE
    BEGIN
        SET @CheckSubjectName = 1;
    END

    RETURN @CheckSubjectName;
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckTeacherAllocation]    Script Date: 7/19/2024 11:32:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_CheckTeacherAllocation]
(
    @TeacherID BIGINT
)
RETURNS BIT
AS
BEGIN
    DECLARE @IsAllocated BIT;

    IF EXISTS (SELECT 1 FROM Teacher_Subject_Allocation WHERE TeacherID = @TeacherID)
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
/****** Object:  UserDefinedFunction [dbo].[fn_CheckTeacherEmail]    Script Date: 7/19/2024 11:32:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[fn_CheckTeacherEmail]
(
    @TeacherID BIGINT,
    @Email NVARCHAR(30)
)
RETURNS BIT
AS
BEGIN
    DECLARE @Exists BIT;
    SELECT @Exists = CASE WHEN EXISTS (SELECT 1 FROM Teacher WHERE Email = @Email AND (@TeacherID IS NULL OR TeacherID != @TeacherID)) THEN 1 ELSE 0 END;
    RETURN @Exists;
END;
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckTeacherName]    Script Date: 7/19/2024 11:32:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[fn_CheckTeacherName]
(
    @TeacherID BIGINT,
    @DisplayName NVARCHAR(50)
)
RETURNS BIT
AS
BEGIN
    DECLARE @Exists BIT;
    SELECT @Exists = CASE 
        WHEN EXISTS (SELECT 1 FROM Teacher WHERE DisplayName = @DisplayName AND (@TeacherID IS NULL OR TeacherID != @TeacherID)) 
        THEN 1 ELSE 0 
    END;
    RETURN @Exists;
END;
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckTeacherRegNo]    Script Date: 7/19/2024 11:32:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[fn_CheckTeacherRegNo]
(
    @TeacherID BIGINT,
    @TeacherRegNo NVARCHAR(10)
)
RETURNS BIT
AS
BEGIN
    DECLARE @Exists BIT;
    SELECT @Exists = CASE 
        WHEN EXISTS (SELECT 1 FROM Teacher WHERE TeacherRegNo = @TeacherRegNo AND (@TeacherID IS NULL OR TeacherID != @TeacherID)) 
        THEN 1 ELSE 0 
    END;
    RETURN @Exists;
END;
GO
/****** Object:  UserDefinedFunction [dbo].[FN_IsSubjectAllocationInUse]    Script Date: 7/19/2024 11:32:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FN_IsSubjectAllocationInUse]
(
    @SubjectAllocationID BIGINT
)
RETURNS BIT
AS
BEGIN
    DECLARE @IsAllocated BIT;

    IF EXISTS (SELECT 1 FROM Student_Subject_Teacher_Allocation WHERE SubjectAllocationID = @SubjectAllocationID)
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
/****** Object:  Table [dbo].[LogTable]    Script Date: 7/19/2024 11:32:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Level] [nvarchar](50) NOT NULL,
	[Logger] [nvarchar](255) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Exception] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/19/2024 11:32:42 AM ******/
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
/****** Object:  Table [dbo].[Student_Subject_Teacher_Allocation]    Script Date: 7/19/2024 11:32:42 AM ******/
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
/****** Object:  Table [dbo].[Subject]    Script Date: 7/19/2024 11:32:42 AM ******/
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
/****** Object:  Table [dbo].[Teacher]    Script Date: 7/19/2024 11:32:42 AM ******/
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
/****** Object:  Table [dbo].[Teacher_Subject_Allocation]    Script Date: 7/19/2024 11:32:42 AM ******/
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
SET IDENTITY_INSERT [dbo].[LogTable] ON 

INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2873, CAST(N'2024-07-04T13:45:41.977' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No students found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2874, CAST(N'2024-07-04T13:45:42.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2875, CAST(N'2024-07-04T13:45:44.950' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50018 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2876, CAST(N'2024-07-04T13:45:48.783' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2877, CAST(N'2024-07-04T13:45:48.797' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2878, CAST(N'2024-07-04T13:46:35.613' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2879, CAST(N'2024-07-04T13:46:35.627' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2880, CAST(N'2024-07-04T13:46:44.980' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50024 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2881, CAST(N'2024-07-04T13:46:49.657' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2882, CAST(N'2024-07-04T13:46:49.677' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2883, CAST(N'2024-07-04T13:59:12.030' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2884, CAST(N'2024-07-04T13:59:12.030' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2885, CAST(N'2024-07-04T13:59:32.520' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2886, CAST(N'2024-07-04T13:59:32.527' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2887, CAST(N'2024-07-04T14:01:13.907' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2888, CAST(N'2024-07-04T14:01:13.920' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2889, CAST(N'2024-07-04T14:01:35.543' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2890, CAST(N'2024-07-04T14:01:35.543' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2891, CAST(N'2024-07-04T14:02:08.543' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2892, CAST(N'2024-07-04T14:02:08.557' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2893, CAST(N'2024-07-04T17:09:20.713' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2894, CAST(N'2024-07-04T17:09:20.730' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2895, CAST(N'2024-07-04T17:13:11.843' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2896, CAST(N'2024-07-04T17:13:11.853' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2897, CAST(N'2024-07-04T17:13:17.380' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2898, CAST(N'2024-07-04T17:13:17.380' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2899, CAST(N'2024-07-04T17:14:20.023' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2900, CAST(N'2024-07-04T17:14:20.023' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2901, CAST(N'2024-07-04T17:14:24.463' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2902, CAST(N'2024-07-04T17:14:24.463' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2903, CAST(N'2024-07-04T17:25:29.630' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2904, CAST(N'2024-07-04T17:25:39.923' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2905, CAST(N'2024-07-04T17:26:01.787' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2906, CAST(N'2024-07-04T17:26:06.170' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2907, CAST(N'2024-07-04T17:26:09.063' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2908, CAST(N'2024-07-04T17:26:10.513' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2909, CAST(N'2024-07-04T17:26:16.820' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2910, CAST(N'2024-07-04T17:26:18.400' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50018 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2911, CAST(N'2024-07-04T17:26:20.630' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2912, CAST(N'2024-07-04T17:44:34.180' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2913, CAST(N'2024-07-04T17:49:43.423' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2914, CAST(N'2024-07-04T17:49:53.967' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2915, CAST(N'2024-07-04T17:50:04.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2916, CAST(N'2024-07-04T17:50:26.023' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2917, CAST(N'2024-07-04T17:50:46.623' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2918, CAST(N'2024-07-04T17:51:28.087' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2919, CAST(N'2024-07-04T17:52:13.027' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2920, CAST(N'2024-07-04T17:53:57.960' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2921, CAST(N'2024-07-04T17:56:24.853' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2922, CAST(N'2024-07-04T20:11:06.783' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2923, CAST(N'2024-07-04T20:11:08.260' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2924, CAST(N'2024-07-04T20:12:05.283' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2925, CAST(N'2024-07-04T20:13:50.627' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2926, CAST(N'2024-07-04T20:15:03.463' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2927, CAST(N'2024-07-04T20:15:16.317' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2928, CAST(N'2024-07-04T20:16:05.787' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2929, CAST(N'2024-07-04T20:16:39.580' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2930, CAST(N'2024-07-04T20:39:19.747' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2931, CAST(N'2024-07-04T20:43:32.663' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2932, CAST(N'2024-07-04T20:48:53.713' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2933, CAST(N'2024-07-04T20:54:07.240' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2934, CAST(N'2024-07-04T21:04:55.923' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2935, CAST(N'2024-07-04T21:40:58.267' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2936, CAST(N'2024-07-04T21:41:29.493' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2937, CAST(N'2024-07-04T22:10:24.357' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2938, CAST(N'2024-07-04T22:16:18.370' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2939, CAST(N'2024-07-04T22:17:33.960' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2940, CAST(N'2024-07-04T22:17:40.657' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2941, CAST(N'2024-07-04T22:18:09.357' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2942, CAST(N'2024-07-04T22:18:16.313' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2943, CAST(N'2024-07-04T22:20:06.120' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2944, CAST(N'2024-07-04T22:20:12.950' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2945, CAST(N'2024-07-04T22:20:30.397' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2946, CAST(N'2024-07-04T22:21:18.683' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2947, CAST(N'2024-07-04T22:23:56.143' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2948, CAST(N'2024-07-04T22:23:56.480' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2949, CAST(N'2024-07-04T22:23:59.060' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2950, CAST(N'2024-07-04T22:24:00.577' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2951, CAST(N'2024-07-04T22:24:02.530' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2952, CAST(N'2024-07-04T22:24:03.893' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2953, CAST(N'2024-07-04T22:24:07.173' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2954, CAST(N'2024-07-04T22:39:49.320' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2955, CAST(N'2024-07-04T22:40:56.590' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2956, CAST(N'2024-07-04T22:41:19.110' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2957, CAST(N'2024-07-04T22:41:34.827' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2958, CAST(N'2024-07-04T22:41:37.840' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2959, CAST(N'2024-07-04T22:42:40.330' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2960, CAST(N'2024-07-04T22:42:48.540' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2961, CAST(N'2024-07-04T22:43:20.893' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2962, CAST(N'2024-07-04T22:43:26.820' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2963, CAST(N'2024-07-04T22:43:30.360' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2964, CAST(N'2024-07-04T22:43:36.820' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2965, CAST(N'2024-07-04T22:43:38.543' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2966, CAST(N'2024-07-04T22:43:40.787' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2967, CAST(N'2024-07-04T22:43:42.123' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2968, CAST(N'2024-07-04T22:43:43.760' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2969, CAST(N'2024-07-04T22:43:48.213' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2970, CAST(N'2024-07-04T22:44:41.017' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2971, CAST(N'2024-07-04T22:44:52.077' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2972, CAST(N'2024-07-04T22:44:55.107' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2973, CAST(N'2024-07-04T22:44:56.927' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2974, CAST(N'2024-07-04T22:44:57.863' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2975, CAST(N'2024-07-04T22:44:59.277' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2976, CAST(N'2024-07-04T22:45:00.387' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2977, CAST(N'2024-07-04T22:45:02.627' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2978, CAST(N'2024-07-04T22:45:03.993' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2979, CAST(N'2024-07-04T22:45:05.437' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2980, CAST(N'2024-07-04T22:45:53.827' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2981, CAST(N'2024-07-04T22:46:01.223' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2982, CAST(N'2024-07-04T22:46:05.200' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2983, CAST(N'2024-07-04T22:46:06.423' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2984, CAST(N'2024-07-04T22:49:05.257' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2985, CAST(N'2024-07-04T22:49:30.143' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2986, CAST(N'2024-07-04T22:53:30.690' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2987, CAST(N'2024-07-04T22:53:33.433' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2988, CAST(N'2024-07-04T22:53:36.227' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2989, CAST(N'2024-07-04T22:53:38.743' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2990, CAST(N'2024-07-04T22:53:47.833' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No logs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2991, CAST(N'2024-07-04T22:53:49.457' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2992, CAST(N'2024-07-04T22:53:51.043' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2993, CAST(N'2024-07-04T22:56:51.463' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2994, CAST(N'2024-07-04T22:56:57.510' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2995, CAST(N'2024-07-04T22:59:27.520' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2996, CAST(N'2024-07-04T23:00:21.127' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2997, CAST(N'2024-07-04T23:01:11.777' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2998, CAST(N'2024-07-04T23:01:31.917' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (2999, CAST(N'2024-07-04T23:01:57.700' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3000, CAST(N'2024-07-04T23:02:05.270' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3001, CAST(N'2024-07-04T23:02:07.283' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3002, CAST(N'2024-07-04T23:02:09.563' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No logs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3003, CAST(N'2024-07-04T23:02:11.637' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3004, CAST(N'2024-07-05T07:10:10.137' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3005, CAST(N'2024-07-05T07:13:58.973' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3006, CAST(N'2024-07-05T07:14:49.087' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3007, CAST(N'2024-07-05T07:15:02.237' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3008, CAST(N'2024-07-05T07:15:27.113' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3009, CAST(N'2024-07-05T07:16:07.260' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3010, CAST(N'2024-07-05T07:16:20.293' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3011, CAST(N'2024-07-05T07:20:53.073' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3012, CAST(N'2024-07-05T07:20:58.963' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3013, CAST(N'2024-07-05T07:21:01.567' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3014, CAST(N'2024-07-05T07:21:04.597' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No logs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3015, CAST(N'2024-07-05T07:21:07.440' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3016, CAST(N'2024-07-05T08:06:45.940' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3017, CAST(N'2024-07-05T08:07:03.320' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No logs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3018, CAST(N'2024-07-05T08:07:05.433' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No logs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3019, CAST(N'2024-07-05T08:09:27.653' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3020, CAST(N'2024-07-05T08:10:11.817' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3021, CAST(N'2024-07-05T08:10:57.633' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3022, CAST(N'2024-07-05T08:11:09.470' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3023, CAST(N'2024-07-05T08:13:41.370' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3024, CAST(N'2024-07-05T08:15:24.970' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3025, CAST(N'2024-07-05T08:48:04.340' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3026, CAST(N'2024-07-05T08:48:13.110' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3027, CAST(N'2024-07-05T08:48:18.677' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3028, CAST(N'2024-07-05T08:48:22.273' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No logs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3029, CAST(N'2024-07-05T08:48:24.713' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3030, CAST(N'2024-07-05T09:50:35.460' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3031, CAST(N'2024-07-05T09:50:35.497' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3032, CAST(N'2024-07-05T09:53:16.883' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3033, CAST(N'2024-07-05T09:53:17.103' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3034, CAST(N'2024-07-05T09:53:23.247' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3035, CAST(N'2024-07-05T09:53:23.340' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3036, CAST(N'2024-07-05T09:53:29.243' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3037, CAST(N'2024-07-05T09:53:29.360' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3038, CAST(N'2024-07-05T09:53:39.773' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3039, CAST(N'2024-07-05T09:53:39.810' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3040, CAST(N'2024-07-05T09:55:24.960' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3041, CAST(N'2024-07-05T09:55:25.017' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3042, CAST(N'2024-07-05T09:57:01.833' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3043, CAST(N'2024-07-05T09:57:01.877' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3044, CAST(N'2024-07-05T10:02:17.430' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3045, CAST(N'2024-07-05T10:02:17.430' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3046, CAST(N'2024-07-05T10:04:59.377' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3047, CAST(N'2024-07-05T10:04:59.377' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3048, CAST(N'2024-07-05T10:10:49.290' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3049, CAST(N'2024-07-05T10:10:49.323' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3050, CAST(N'2024-07-05T10:10:55.357' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3051, CAST(N'2024-07-05T10:10:55.357' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3052, CAST(N'2024-07-05T10:12:06.360' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3053, CAST(N'2024-07-05T10:12:14.020' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3054, CAST(N'2024-07-05T10:20:16.350' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3055, CAST(N'2024-07-05T10:26:13.680' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3056, CAST(N'2024-07-05T10:31:57.133' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3057, CAST(N'2024-07-05T10:32:31.387' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3058, CAST(N'2024-07-05T10:32:32.920' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3059, CAST(N'2024-07-05T10:32:34.973' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No logs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3060, CAST(N'2024-07-05T10:32:37.143' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3061, CAST(N'2024-07-05T11:48:05.173' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3062, CAST(N'2024-07-05T11:48:05.230' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log counts by month.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3063, CAST(N'2024-07-05T11:48:05.280' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3064, CAST(N'2024-07-05T11:48:30.787' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3065, CAST(N'2024-07-05T11:48:38.290' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3066, CAST(N'2024-07-05T11:48:54.113' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log counts by month.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3067, CAST(N'2024-07-05T11:48:58.770' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3068, CAST(N'2024-07-05T11:49:08.607' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log level counts.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3069, CAST(N'2024-07-05T12:44:05.037' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3070, CAST(N'2024-07-05T13:05:54.257' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3071, CAST(N'2024-07-05T13:28:44.463' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log counts by month.', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3072, CAST(N'2024-07-05T13:28:44.533' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3073, CAST(N'2024-07-05T13:29:26.027' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log counts by month.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3074, CAST(N'2024-07-05T13:29:26.027' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3075, CAST(N'2024-07-05T13:29:37.597' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log counts by month.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3076, CAST(N'2024-07-05T13:29:37.663' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3077, CAST(N'2024-07-05T13:35:43.427' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3078, CAST(N'2024-07-05T13:37:28.720' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3079, CAST(N'2024-07-05T13:37:40.193' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3080, CAST(N'2024-07-05T13:38:01.390' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3081, CAST(N'2024-07-05T13:38:20.933' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3082, CAST(N'2024-07-05T13:40:56.260' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3083, CAST(N'2024-07-05T13:44:00.377' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3084, CAST(N'2024-07-05T13:44:53.577' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3085, CAST(N'2024-07-05T13:46:00.217' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3086, CAST(N'2024-07-05T13:46:28.237' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3087, CAST(N'2024-07-05T13:46:29.487' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3088, CAST(N'2024-07-05T13:46:34.987' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No logs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3089, CAST(N'2024-07-05T13:46:36.463' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3090, CAST(N'2024-07-05T13:47:57.170' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3091, CAST(N'2024-07-05T13:48:37.597' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3092, CAST(N'2024-07-05T13:50:57.750' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3093, CAST(N'2024-07-05T13:51:18.427' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3094, CAST(N'2024-07-05T13:51:44.860' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3095, CAST(N'2024-07-05T17:37:46.220' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (3096, CAST(N'2024-07-05T17:39:43.060' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4061, CAST(N'2024-07-07T12:21:15.343' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4062, CAST(N'2024-07-07T16:33:48.877' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4063, CAST(N'2024-07-07T16:39:07.350' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4064, CAST(N'2024-07-07T16:41:19.883' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4065, CAST(N'2024-07-07T16:44:44.550' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4066, CAST(N'2024-07-07T16:45:03.030' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4067, CAST(N'2024-07-07T17:07:30.437' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4068, CAST(N'2024-07-07T17:10:08.463' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4069, CAST(N'2024-07-07T17:10:14.013' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4070, CAST(N'2024-07-07T17:10:59.673' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4071, CAST(N'2024-07-07T17:11:04.903' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4072, CAST(N'2024-07-07T17:11:07.770' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4073, CAST(N'2024-07-07T18:08:40.307' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4074, CAST(N'2024-07-07T18:11:53.537' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4075, CAST(N'2024-07-07T18:12:00.690' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4076, CAST(N'2024-07-07T18:12:21.393' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4077, CAST(N'2024-07-07T18:12:28.620' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4078, CAST(N'2024-07-07T18:13:41.307' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4079, CAST(N'2024-07-07T18:13:48.277' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4080, CAST(N'2024-07-08T07:38:47.597' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4081, CAST(N'2024-07-08T07:43:23.767' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4082, CAST(N'2024-07-08T07:43:24.460' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4083, CAST(N'2024-07-08T07:48:12.733' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4084, CAST(N'2024-07-08T07:48:19.843' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4085, CAST(N'2024-07-08T07:49:41.447' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4086, CAST(N'2024-07-08T07:49:44.063' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4087, CAST(N'2024-07-08T07:51:19.377' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4088, CAST(N'2024-07-08T07:58:40.077' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4089, CAST(N'2024-07-08T07:59:20.793' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4090, CAST(N'2024-07-08T08:10:39.460' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4091, CAST(N'2024-07-08T08:11:18.767' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4092, CAST(N'2024-07-08T08:11:41.847' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4093, CAST(N'2024-07-08T08:11:54.660' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4094, CAST(N'2024-07-08T08:12:21.183' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4095, CAST(N'2024-07-08T08:13:45.200' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4096, CAST(N'2024-07-08T08:14:59.147' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4097, CAST(N'2024-07-08T08:15:01.660' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4098, CAST(N'2024-07-08T08:15:04.447' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No logs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4099, CAST(N'2024-07-08T08:15:07.003' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4100, CAST(N'2024-07-08T08:17:18.577' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4101, CAST(N'2024-07-08T08:21:43.167' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4102, CAST(N'2024-07-08T08:25:06.547' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4103, CAST(N'2024-07-08T08:25:38.127' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4104, CAST(N'2024-07-08T08:27:25.730' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4105, CAST(N'2024-07-08T08:28:00.373' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4106, CAST(N'2024-07-08T08:30:45.293' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4107, CAST(N'2024-07-08T08:57:24.210' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4108, CAST(N'2024-07-08T09:06:38.250' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4109, CAST(N'2024-07-08T09:07:45.507' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4110, CAST(N'2024-07-08T09:08:15.200' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4111, CAST(N'2024-07-08T09:08:38.447' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4112, CAST(N'2024-07-08T09:08:44.347' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4113, CAST(N'2024-07-08T09:08:59.677' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4114, CAST(N'2024-07-08T09:15:42.143' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4115, CAST(N'2024-07-08T09:16:18.087' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4116, CAST(N'2024-07-08T09:16:20.773' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4117, CAST(N'2024-07-08T09:16:26.377' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4118, CAST(N'2024-07-08T09:17:01.823' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4119, CAST(N'2024-07-08T09:18:56.597' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4120, CAST(N'2024-07-08T09:20:07.863' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4121, CAST(N'2024-07-08T09:20:34.390' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4122, CAST(N'2024-07-08T09:20:35.930' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4123, CAST(N'2024-07-08T09:20:39.940' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No logs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4124, CAST(N'2024-07-08T09:20:41.653' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4125, CAST(N'2024-07-08T09:29:00.370' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4126, CAST(N'2024-07-08T09:29:08.237' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4127, CAST(N'2024-07-08T09:29:41.757' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4128, CAST(N'2024-07-08T09:33:37.547' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4129, CAST(N'2024-07-08T09:33:50.157' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4130, CAST(N'2024-07-08T09:35:12.643' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4131, CAST(N'2024-07-08T09:35:27.450' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4132, CAST(N'2024-07-08T09:35:39.780' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4133, CAST(N'2024-07-08T09:35:46.840' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4134, CAST(N'2024-07-08T09:37:45.653' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4135, CAST(N'2024-07-08T09:40:45.013' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4136, CAST(N'2024-07-08T09:40:48.977' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4137, CAST(N'2024-07-08T09:40:54.293' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4138, CAST(N'2024-07-08T09:57:34.457' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4139, CAST(N'2024-07-08T09:57:41.873' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4140, CAST(N'2024-07-08T10:19:40.243' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4141, CAST(N'2024-07-08T10:21:18.300' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4142, CAST(N'2024-07-08T10:21:33.173' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4143, CAST(N'2024-07-08T10:21:53.993' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4144, CAST(N'2024-07-08T10:22:13.387' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4145, CAST(N'2024-07-08T10:31:39.227' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4146, CAST(N'2024-07-08T10:31:44.360' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10012 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4147, CAST(N'2024-07-08T10:44:44.300' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4148, CAST(N'2024-07-08T10:45:01.020' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4149, CAST(N'2024-07-08T10:45:11.357' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4150, CAST(N'2024-07-08T10:45:14.763' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4151, CAST(N'2024-07-08T10:45:25.950' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4152, CAST(N'2024-07-08T10:45:49.697' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4153, CAST(N'2024-07-08T10:46:03.567' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4154, CAST(N'2024-07-08T10:46:05.653' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4155, CAST(N'2024-07-08T10:48:45.380' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4156, CAST(N'2024-07-08T10:50:02.620' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4157, CAST(N'2024-07-08T10:51:44.580' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4158, CAST(N'2024-07-08T10:52:02.247' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4159, CAST(N'2024-07-08T10:52:18.063' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4160, CAST(N'2024-07-08T10:52:54.777' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4161, CAST(N'2024-07-08T10:53:14.633' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4162, CAST(N'2024-07-08T10:54:27.883' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4163, CAST(N'2024-07-08T10:55:05.410' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4164, CAST(N'2024-07-08T10:55:21.393' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4165, CAST(N'2024-07-08T10:55:33.120' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4166, CAST(N'2024-07-08T10:55:59.460' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4167, CAST(N'2024-07-08T10:57:47.320' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4168, CAST(N'2024-07-08T10:58:21.420' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4169, CAST(N'2024-07-08T10:58:58.847' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4170, CAST(N'2024-07-08T10:59:56.797' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4171, CAST(N'2024-07-08T11:00:19.377' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4172, CAST(N'2024-07-08T11:00:40.787' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4173, CAST(N'2024-07-08T11:01:43.223' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4174, CAST(N'2024-07-08T11:01:43.510' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4175, CAST(N'2024-07-08T11:01:55.770' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4176, CAST(N'2024-07-08T11:01:55.857' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4177, CAST(N'2024-07-08T11:02:01.297' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4178, CAST(N'2024-07-08T11:02:01.433' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4179, CAST(N'2024-07-08T11:02:44.680' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4180, CAST(N'2024-07-08T11:02:44.757' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4181, CAST(N'2024-07-08T11:03:03.720' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4182, CAST(N'2024-07-08T11:03:03.870' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4183, CAST(N'2024-07-08T11:03:22.083' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4184, CAST(N'2024-07-08T11:03:22.290' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4185, CAST(N'2024-07-08T11:03:50.147' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4186, CAST(N'2024-07-08T11:03:50.200' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4187, CAST(N'2024-07-08T11:04:55.650' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4188, CAST(N'2024-07-08T11:04:58.137' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4189, CAST(N'2024-07-08T11:05:02.853' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4190, CAST(N'2024-07-08T11:05:13.047' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4191, CAST(N'2024-07-08T11:05:50.260' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4192, CAST(N'2024-07-08T11:05:54.217' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4193, CAST(N'2024-07-08T11:06:06.770' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4194, CAST(N'2024-07-08T11:06:17.693' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4195, CAST(N'2024-07-08T11:06:38.790' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4196, CAST(N'2024-07-08T11:08:48.103' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4197, CAST(N'2024-07-08T11:10:23.320' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4198, CAST(N'2024-07-08T11:10:23.387' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4199, CAST(N'2024-07-08T11:11:33.530' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4200, CAST(N'2024-07-08T11:11:33.560' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4201, CAST(N'2024-07-08T11:11:51.083' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4202, CAST(N'2024-07-08T11:11:51.140' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4203, CAST(N'2024-07-08T11:12:22.767' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4204, CAST(N'2024-07-08T11:12:22.887' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4205, CAST(N'2024-07-08T11:12:44.693' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4206, CAST(N'2024-07-08T11:13:46.257' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4207, CAST(N'2024-07-08T11:13:46.350' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4208, CAST(N'2024-07-08T11:13:54.980' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4209, CAST(N'2024-07-08T11:13:55.053' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4210, CAST(N'2024-07-08T11:17:01.717' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4211, CAST(N'2024-07-08T11:17:01.717' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4212, CAST(N'2024-07-08T11:19:49.720' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4213, CAST(N'2024-07-08T11:19:49.720' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4214, CAST(N'2024-07-08T11:20:15.110' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4215, CAST(N'2024-07-08T11:20:15.170' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4216, CAST(N'2024-07-08T11:21:16.233' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4217, CAST(N'2024-07-08T11:21:16.280' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4218, CAST(N'2024-07-08T11:21:30.403' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4219, CAST(N'2024-07-08T11:21:31.663' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4220, CAST(N'2024-07-08T11:22:17.297' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4221, CAST(N'2024-07-08T11:22:17.313' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4222, CAST(N'2024-07-08T11:22:39.283' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4223, CAST(N'2024-07-08T11:22:41.290' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4224, CAST(N'2024-07-08T11:58:59.890' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4225, CAST(N'2024-07-08T11:58:59.890' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4226, CAST(N'2024-07-08T11:58:59.963' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4227, CAST(N'2024-07-08T11:59:01.223' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4228, CAST(N'2024-07-08T11:59:12.870' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4229, CAST(N'2024-07-08T11:59:23.230' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4230, CAST(N'2024-07-08T11:59:27.127' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4231, CAST(N'2024-07-08T11:59:36.643' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4232, CAST(N'2024-07-08T11:59:56.077' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4233, CAST(N'2024-07-08T11:59:58.160' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4234, CAST(N'2024-07-08T12:00:12.393' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4235, CAST(N'2024-07-08T12:00:15.073' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4236, CAST(N'2024-07-08T12:00:38.137' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4237, CAST(N'2024-07-08T12:00:45.257' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4238, CAST(N'2024-07-08T12:00:59.677' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4239, CAST(N'2024-07-08T12:02:31.910' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4240, CAST(N'2024-07-08T12:02:31.947' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4241, CAST(N'2024-07-08T12:02:31.973' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4242, CAST(N'2024-07-08T12:02:56.433' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4243, CAST(N'2024-07-08T12:03:29.107' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4244, CAST(N'2024-07-08T12:03:32.503' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4245, CAST(N'2024-07-08T12:03:38.657' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4246, CAST(N'2024-07-08T12:04:14.077' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4247, CAST(N'2024-07-08T12:04:21.683' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4248, CAST(N'2024-07-08T12:04:24.737' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4249, CAST(N'2024-07-08T12:04:26.557' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4250, CAST(N'2024-07-08T12:12:49.380' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4251, CAST(N'2024-07-08T12:12:49.380' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4252, CAST(N'2024-07-08T12:12:49.460' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4253, CAST(N'2024-07-08T12:13:03.677' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4254, CAST(N'2024-07-08T12:27:30.197' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4255, CAST(N'2024-07-08T12:27:30.197' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4256, CAST(N'2024-07-08T12:27:30.250' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4257, CAST(N'2024-07-08T12:27:51.027' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4258, CAST(N'2024-07-08T12:27:54.427' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4259, CAST(N'2024-07-08T12:28:03.043' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4260, CAST(N'2024-07-08T12:28:04.797' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4261, CAST(N'2024-07-08T12:31:09.500' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4262, CAST(N'2024-07-08T12:31:09.500' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4263, CAST(N'2024-07-08T12:31:09.560' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4264, CAST(N'2024-07-08T12:31:26.857' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4265, CAST(N'2024-07-08T12:31:26.860' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4266, CAST(N'2024-07-08T12:31:26.860' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4267, CAST(N'2024-07-08T12:31:26.937' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4268, CAST(N'2024-07-08T12:31:32.623' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4269, CAST(N'2024-07-08T12:31:54.783' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4270, CAST(N'2024-07-08T12:31:54.940' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4271, CAST(N'2024-07-08T12:31:54.980' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4272, CAST(N'2024-07-08T12:31:55.030' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4273, CAST(N'2024-07-08T12:32:01.500' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4274, CAST(N'2024-07-08T12:32:19.677' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4275, CAST(N'2024-07-08T12:32:28.870' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No logs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4276, CAST(N'2024-07-08T12:32:37.323' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4277, CAST(N'2024-07-08T12:33:38.773' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4278, CAST(N'2024-07-08T12:33:39.180' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4279, CAST(N'2024-07-08T12:33:39.187' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4280, CAST(N'2024-07-08T12:33:39.207' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4281, CAST(N'2024-07-08T12:33:52.497' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4282, CAST(N'2024-07-08T12:34:35.517' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4283, CAST(N'2024-07-08T12:34:35.850' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4284, CAST(N'2024-07-08T12:34:36.050' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4285, CAST(N'2024-07-08T12:34:36.073' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4286, CAST(N'2024-07-08T12:34:55.007' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4287, CAST(N'2024-07-08T12:34:55.327' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4288, CAST(N'2024-07-08T12:34:55.347' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4289, CAST(N'2024-07-08T12:34:55.377' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4290, CAST(N'2024-07-08T12:35:08.220' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4291, CAST(N'2024-07-08T12:35:08.490' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4292, CAST(N'2024-07-08T12:35:08.490' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4293, CAST(N'2024-07-08T12:35:08.540' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4294, CAST(N'2024-07-08T12:39:43.100' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4295, CAST(N'2024-07-08T12:39:43.100' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4296, CAST(N'2024-07-08T12:39:43.170' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4297, CAST(N'2024-07-08T12:39:58.633' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4298, CAST(N'2024-07-08T12:39:58.663' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4299, CAST(N'2024-07-08T12:39:58.690' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4300, CAST(N'2024-07-08T12:39:58.690' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4301, CAST(N'2024-07-08T12:40:14.087' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4302, CAST(N'2024-07-08T12:41:48.883' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4303, CAST(N'2024-07-08T12:41:48.993' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4304, CAST(N'2024-07-08T12:41:49.070' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4305, CAST(N'2024-07-08T12:41:58.657' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4306, CAST(N'2024-07-08T12:41:59.210' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4307, CAST(N'2024-07-08T12:41:59.210' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4308, CAST(N'2024-07-08T12:42:01.700' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4309, CAST(N'2024-07-08T12:42:01.723' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4310, CAST(N'2024-07-08T12:42:03.567' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4311, CAST(N'2024-07-08T12:42:06.253' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4312, CAST(N'2024-07-08T12:42:08.310' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4313, CAST(N'2024-07-08T12:42:10.143' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4314, CAST(N'2024-07-08T12:42:10.143' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4315, CAST(N'2024-07-08T12:42:10.173' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4316, CAST(N'2024-07-08T12:42:17.277' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4317, CAST(N'2024-07-08T12:42:17.300' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4318, CAST(N'2024-07-08T12:42:19.153' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4319, CAST(N'2024-07-08T12:42:22.060' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4320, CAST(N'2024-07-08T12:42:34.473' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4321, CAST(N'2024-07-08T12:42:48.703' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4322, CAST(N'2024-07-08T12:44:17.673' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4323, CAST(N'2024-07-08T12:44:17.673' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4324, CAST(N'2024-07-08T12:44:17.863' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4325, CAST(N'2024-07-08T12:44:42.570' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4326, CAST(N'2024-07-08T12:44:42.580' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4327, CAST(N'2024-07-08T12:44:42.650' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get all NLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4328, CAST(N'2024-07-08T13:03:25.283' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4329, CAST(N'2024-07-08T13:04:10.010' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4330, CAST(N'2024-07-08T13:03:25.283' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4331, CAST(N'2024-07-08T13:04:11.357' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4332, CAST(N'2024-07-08T13:04:11.357' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4333, CAST(N'2024-07-08T13:04:11.490' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4334, CAST(N'2024-07-08T13:04:22.137' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4335, CAST(N'2024-07-08T13:04:26.450' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4336, CAST(N'2024-07-08T13:04:28.693' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4337, CAST(N'2024-07-08T13:04:29.863' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4338, CAST(N'2024-07-08T13:04:29.873' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4339, CAST(N'2024-07-08T13:04:29.920' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4340, CAST(N'2024-07-08T13:04:47.373' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4341, CAST(N'2024-07-08T13:04:58.183' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4342, CAST(N'2024-07-08T13:05:02.907' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4343, CAST(N'2024-07-08T13:05:15.060' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4344, CAST(N'2024-07-08T13:05:17.243' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4345, CAST(N'2024-07-08T13:05:37.040' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4346, CAST(N'2024-07-08T13:17:46.550' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4347, CAST(N'2024-07-08T13:17:46.573' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4348, CAST(N'2024-07-08T13:17:46.573' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4349, CAST(N'2024-07-08T13:19:02.470' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4350, CAST(N'2024-07-08T13:19:02.470' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4351, CAST(N'2024-07-08T13:19:02.523' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4352, CAST(N'2024-07-08T13:19:05.870' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4353, CAST(N'2024-07-08T13:19:12.457' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4354, CAST(N'2024-07-08T13:19:30.180' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4355, CAST(N'2024-07-08T13:19:38.100' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4356, CAST(N'2024-07-08T13:19:53.587' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4357, CAST(N'2024-07-08T13:19:53.613' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4358, CAST(N'2024-07-08T13:19:53.627' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4359, CAST(N'2024-07-08T13:21:09.560' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4360, CAST(N'2024-07-08T13:21:09.560' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4361, CAST(N'2024-07-08T13:21:09.597' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4362, CAST(N'2024-07-08T13:21:33.027' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4363, CAST(N'2024-07-08T13:21:49.077' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4364, CAST(N'2024-07-08T13:21:50.277' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4365, CAST(N'2024-07-08T13:21:53.520' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4366, CAST(N'2024-07-08T13:22:04.403' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4367, CAST(N'2024-07-08T13:25:21.257' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4368, CAST(N'2024-07-08T13:25:21.257' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4369, CAST(N'2024-07-08T13:25:21.323' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4370, CAST(N'2024-07-08T13:25:25.337' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4371, CAST(N'2024-07-08T13:25:27.910' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4372, CAST(N'2024-07-08T13:25:31.640' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4373, CAST(N'2024-07-08T13:25:35.010' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4374, CAST(N'2024-07-08T13:26:56.120' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4375, CAST(N'2024-07-08T13:26:56.270' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4376, CAST(N'2024-07-08T13:26:56.270' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4377, CAST(N'2024-07-08T13:27:38.427' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4378, CAST(N'2024-07-08T13:27:38.450' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4379, CAST(N'2024-07-08T13:27:38.470' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4380, CAST(N'2024-07-08T13:29:28.457' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4381, CAST(N'2024-07-08T13:29:28.457' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4382, CAST(N'2024-07-08T13:29:28.467' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4383, CAST(N'2024-07-08T13:29:49.897' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4384, CAST(N'2024-07-08T13:29:55.280' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4385, CAST(N'2024-07-08T13:30:07.837' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4386, CAST(N'2024-07-08T13:30:10.260' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4387, CAST(N'2024-07-08T13:30:17.380' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4388, CAST(N'2024-07-08T13:31:17.043' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4389, CAST(N'2024-07-08T13:31:17.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4390, CAST(N'2024-07-08T13:31:17.060' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4391, CAST(N'2024-07-08T13:31:20.543' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4392, CAST(N'2024-07-08T13:31:25.623' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4393, CAST(N'2024-07-08T13:31:28.823' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4394, CAST(N'2024-07-08T13:31:30.800' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4395, CAST(N'2024-07-08T13:32:06.817' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4396, CAST(N'2024-07-08T13:32:07.430' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4397, CAST(N'2024-07-08T13:32:07.430' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4398, CAST(N'2024-07-08T13:32:30.907' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4399, CAST(N'2024-07-08T13:32:30.907' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4400, CAST(N'2024-07-08T13:32:30.943' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4401, CAST(N'2024-07-08T13:33:45.467' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4402, CAST(N'2024-07-08T13:33:45.500' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4403, CAST(N'2024-07-08T13:33:45.557' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4404, CAST(N'2024-07-08T13:34:14.087' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4405, CAST(N'2024-07-08T13:34:14.087' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4406, CAST(N'2024-07-08T13:34:14.143' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4407, CAST(N'2024-07-08T13:34:18.577' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4408, CAST(N'2024-07-08T13:34:56.420' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4409, CAST(N'2024-07-08T13:34:56.770' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4410, CAST(N'2024-07-08T13:34:56.770' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4411, CAST(N'2024-07-08T13:35:20.953' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4412, CAST(N'2024-07-08T13:35:20.953' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4413, CAST(N'2024-07-08T13:35:21.000' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4414, CAST(N'2024-07-08T13:35:31.520' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4415, CAST(N'2024-07-08T13:36:09.143' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4416, CAST(N'2024-07-08T13:36:19.833' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4417, CAST(N'2024-07-08T13:41:14.730' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4418, CAST(N'2024-07-08T13:41:18.077' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4419, CAST(N'2024-07-08T13:41:18.077' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4420, CAST(N'2024-07-08T13:41:56.357' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4421, CAST(N'2024-07-08T13:41:56.407' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4422, CAST(N'2024-07-08T13:41:56.407' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4423, CAST(N'2024-07-08T13:42:10.967' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4424, CAST(N'2024-07-08T13:42:10.967' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4425, CAST(N'2024-07-08T13:42:11.000' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4426, CAST(N'2024-07-08T13:42:33.050' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4427, CAST(N'2024-07-08T13:42:33.050' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4428, CAST(N'2024-07-08T13:42:33.077' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4429, CAST(N'2024-07-08T13:42:54.777' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4430, CAST(N'2024-07-08T13:42:54.790' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4431, CAST(N'2024-07-08T13:42:54.803' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4432, CAST(N'2024-07-08T13:43:20.533' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4433, CAST(N'2024-07-08T13:43:20.533' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4434, CAST(N'2024-07-08T13:43:20.567' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4435, CAST(N'2024-07-08T13:43:48.500' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4436, CAST(N'2024-07-08T13:43:48.500' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4437, CAST(N'2024-07-08T13:43:48.540' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4438, CAST(N'2024-07-08T13:43:51.343' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4439, CAST(N'2024-07-08T13:43:56.517' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4440, CAST(N'2024-07-08T13:44:27.100' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4441, CAST(N'2024-07-08T13:44:27.120' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4442, CAST(N'2024-07-08T13:44:27.190' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4443, CAST(N'2024-07-08T13:44:37.767' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4444, CAST(N'2024-07-08T13:44:37.767' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4445, CAST(N'2024-07-08T13:44:37.807' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4446, CAST(N'2024-07-08T13:44:42.210' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4447, CAST(N'2024-07-08T13:44:47.457' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4448, CAST(N'2024-07-08T13:45:17.367' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4449, CAST(N'2024-07-08T13:45:17.403' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4450, CAST(N'2024-07-08T13:45:17.457' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4451, CAST(N'2024-07-08T13:45:41.120' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4452, CAST(N'2024-07-08T13:45:41.120' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4453, CAST(N'2024-07-08T13:45:41.153' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4454, CAST(N'2024-07-08T13:45:45.087' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4455, CAST(N'2024-07-08T13:46:12.900' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4456, CAST(N'2024-07-08T13:49:10.137' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4457, CAST(N'2024-07-08T13:49:10.363' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4458, CAST(N'2024-07-08T13:49:10.363' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4459, CAST(N'2024-07-08T13:49:18.623' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4460, CAST(N'2024-07-08T13:49:19.050' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4461, CAST(N'2024-07-08T13:49:19.050' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4462, CAST(N'2024-07-08T13:49:37.623' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4463, CAST(N'2024-07-08T13:49:37.623' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4464, CAST(N'2024-07-08T13:49:37.687' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4465, CAST(N'2024-07-08T13:49:56.383' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4466, CAST(N'2024-07-08T14:05:31.973' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4467, CAST(N'2024-07-08T14:05:33.823' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4468, CAST(N'2024-07-08T14:05:38.593' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4469, CAST(N'2024-07-08T14:06:02.870' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4470, CAST(N'2024-07-08T14:06:24.260' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4471, CAST(N'2024-07-08T14:06:24.547' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4472, CAST(N'2024-07-08T14:06:24.547' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4473, CAST(N'2024-07-08T14:06:29.573' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4474, CAST(N'2024-07-08T14:06:40.920' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4475, CAST(N'2024-07-08T14:21:40.720' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4476, CAST(N'2024-07-08T14:23:17.277' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4477, CAST(N'2024-07-08T14:23:29.917' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4478, CAST(N'2024-07-08T14:23:33.097' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4479, CAST(N'2024-07-08T14:23:36.780' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4480, CAST(N'2024-07-08T14:23:46.683' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4481, CAST(N'2024-07-08T14:23:48.180' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4482, CAST(N'2024-07-08T14:23:58.787' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4483, CAST(N'2024-07-08T14:24:47.737' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4484, CAST(N'2024-07-08T14:25:25.540' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4485, CAST(N'2024-07-08T14:25:35.187' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4486, CAST(N'2024-07-08T14:25:38.303' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4487, CAST(N'2024-07-08T14:25:47.583' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4488, CAST(N'2024-07-08T14:25:47.947' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4489, CAST(N'2024-07-08T14:25:47.947' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4490, CAST(N'2024-07-08T14:25:50.233' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4491, CAST(N'2024-07-08T14:25:58.660' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4492, CAST(N'2024-07-08T14:26:26.407' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4493, CAST(N'2024-07-08T14:26:28.693' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4494, CAST(N'2024-07-08T14:26:37.050' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4495, CAST(N'2024-07-08T14:27:15.453' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4496, CAST(N'2024-07-08T14:27:41.403' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4497, CAST(N'2024-07-08T14:27:51.287' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4498, CAST(N'2024-07-08T14:27:57.320' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4499, CAST(N'2024-07-08T14:28:11.403' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4500, CAST(N'2024-07-08T14:28:12.967' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4501, CAST(N'2024-07-08T14:29:09.507' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4502, CAST(N'2024-07-08T14:29:19.450' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4503, CAST(N'2024-07-08T14:32:57.790' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4504, CAST(N'2024-07-08T14:32:57.830' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4505, CAST(N'2024-07-08T14:32:57.830' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4506, CAST(N'2024-07-08T14:34:17.500' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4507, CAST(N'2024-07-08T14:34:21.947' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4508, CAST(N'2024-07-08T14:36:20.753' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4509, CAST(N'2024-07-08T14:36:21.047' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4510, CAST(N'2024-07-08T14:36:21.047' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4511, CAST(N'2024-07-08T14:37:35.587' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4512, CAST(N'2024-07-08T14:37:40.783' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4513, CAST(N'2024-07-08T14:37:58.947' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4514, CAST(N'2024-07-08T14:38:00.883' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4515, CAST(N'2024-07-08T14:49:42.703' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4516, CAST(N'2024-07-08T14:49:42.703' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4517, CAST(N'2024-07-08T14:50:06.260' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4518, CAST(N'2024-07-08T14:50:18.560' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4519, CAST(N'2024-07-08T14:51:18.107' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4520, CAST(N'2024-07-08T14:53:02.113' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4521, CAST(N'2024-07-08T14:53:02.113' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4522, CAST(N'2024-07-08T14:53:02.190' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4523, CAST(N'2024-07-08T14:53:08.643' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4524, CAST(N'2024-07-08T15:29:28.733' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4525, CAST(N'2024-07-08T15:29:28.733' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4526, CAST(N'2024-07-08T15:29:28.827' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4527, CAST(N'2024-07-08T15:42:57.947' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4528, CAST(N'2024-07-08T15:44:32.477' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4529, CAST(N'2024-07-08T15:44:32.723' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4530, CAST(N'2024-07-08T15:44:32.753' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4531, CAST(N'2024-07-08T15:44:35.290' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4532, CAST(N'2024-07-08T15:44:50.633' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4533, CAST(N'2024-07-08T19:28:09.240' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4534, CAST(N'2024-07-08T19:28:42.707' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4535, CAST(N'2024-07-08T19:28:42.940' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4536, CAST(N'2024-07-08T19:28:42.940' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4537, CAST(N'2024-07-08T19:30:18.690' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4538, CAST(N'2024-07-08T19:35:15.170' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4539, CAST(N'2024-07-08T19:35:16.213' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4540, CAST(N'2024-07-08T19:35:16.220' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4541, CAST(N'2024-07-08T19:36:08.760' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4542, CAST(N'2024-07-08T19:36:08.760' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4543, CAST(N'2024-07-08T19:36:08.790' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4544, CAST(N'2024-07-08T19:36:14.277' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4545, CAST(N'2024-07-08T19:36:24.667' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4546, CAST(N'2024-07-08T19:36:24.667' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4547, CAST(N'2024-07-08T19:36:24.693' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4548, CAST(N'2024-07-08T19:36:41.283' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4549, CAST(N'2024-07-08T19:36:41.283' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4550, CAST(N'2024-07-08T19:36:41.313' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4551, CAST(N'2024-07-08T22:26:45.657' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4552, CAST(N'2024-07-09T08:11:00.123' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4553, CAST(N'2024-07-09T08:11:00.123' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4554, CAST(N'2024-07-09T08:11:00.253' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4555, CAST(N'2024-07-09T08:11:05.317' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4556, CAST(N'2024-07-09T08:13:41.017' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4557, CAST(N'2024-07-09T08:13:41.073' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4558, CAST(N'2024-07-09T08:13:41.073' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4559, CAST(N'2024-07-09T08:13:49.733' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4560, CAST(N'2024-07-09T08:21:10.620' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4561, CAST(N'2024-07-09T08:44:33.637' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4562, CAST(N'2024-07-09T08:47:22.287' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4563, CAST(N'2024-07-09T08:47:22.790' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4564, CAST(N'2024-07-09T08:47:22.833' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4565, CAST(N'2024-07-09T08:50:07.940' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4566, CAST(N'2024-07-09T08:50:07.960' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4567, CAST(N'2024-07-09T08:50:07.970' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4568, CAST(N'2024-07-09T08:50:27.467' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4569, CAST(N'2024-07-09T08:50:27.510' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4570, CAST(N'2024-07-09T08:50:27.530' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4571, CAST(N'2024-07-09T08:50:36.543' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4572, CAST(N'2024-07-09T08:50:36.543' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4573, CAST(N'2024-07-09T08:50:36.583' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4574, CAST(N'2024-07-09T08:50:38.730' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4575, CAST(N'2024-07-09T08:50:43.837' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4576, CAST(N'2024-07-09T08:53:52.837' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4577, CAST(N'2024-07-09T08:54:02.847' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4578, CAST(N'2024-07-09T09:03:10.863' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4579, CAST(N'2024-07-09T09:14:41.440' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4580, CAST(N'2024-07-09T09:14:41.440' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4581, CAST(N'2024-07-09T09:14:41.540' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4582, CAST(N'2024-07-09T09:14:42.203' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4583, CAST(N'2024-07-09T09:44:11.203' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4584, CAST(N'2024-07-09T09:48:14.827' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4585, CAST(N'2024-07-09T09:49:33.860' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4586, CAST(N'2024-07-09T09:49:39.290' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4587, CAST(N'2024-07-09T09:57:41.720' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4588, CAST(N'2024-07-09T09:57:42.323' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4589, CAST(N'2024-07-09T09:57:42.330' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4590, CAST(N'2024-07-09T09:58:47.340' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4591, CAST(N'2024-07-09T09:58:47.340' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4592, CAST(N'2024-07-09T09:58:47.383' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4593, CAST(N'2024-07-09T09:59:06.397' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4594, CAST(N'2024-07-09T09:59:28.423' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4595, CAST(N'2024-07-09T09:59:28.423' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4596, CAST(N'2024-07-09T09:59:28.460' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4597, CAST(N'2024-07-09T10:07:38.130' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4598, CAST(N'2024-07-09T10:07:38.130' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4599, CAST(N'2024-07-09T10:07:38.203' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4600, CAST(N'2024-07-09T10:07:46.983' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4601, CAST(N'2024-07-09T10:07:50.417' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4602, CAST(N'2024-07-09T10:07:54.910' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4603, CAST(N'2024-07-09T10:08:00.477' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4604, CAST(N'2024-07-09T10:08:02.487' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4605, CAST(N'2024-07-09T10:08:05.223' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4606, CAST(N'2024-07-09T10:08:10.037' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4607, CAST(N'2024-07-09T10:08:14.347' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4608, CAST(N'2024-07-09T10:08:16.913' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4609, CAST(N'2024-07-09T10:09:13.057' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4610, CAST(N'2024-07-09T10:09:13.127' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4611, CAST(N'2024-07-09T10:09:13.157' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4612, CAST(N'2024-07-09T10:09:44.583' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4613, CAST(N'2024-07-09T10:09:44.593' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4614, CAST(N'2024-07-09T10:09:44.627' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4615, CAST(N'2024-07-09T10:09:51.583' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4616, CAST(N'2024-07-09T10:09:51.873' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4617, CAST(N'2024-07-09T10:09:51.873' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4618, CAST(N'2024-07-09T10:09:54.353' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4619, CAST(N'2024-07-09T10:09:57.153' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4620, CAST(N'2024-07-09T10:10:00.557' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4621, CAST(N'2024-07-09T10:10:03.533' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4622, CAST(N'2024-07-09T10:10:07.527' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4623, CAST(N'2024-07-09T10:11:23.037' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4624, CAST(N'2024-07-09T10:11:23.037' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4625, CAST(N'2024-07-09T10:11:23.073' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4626, CAST(N'2024-07-09T10:11:27.813' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4627, CAST(N'2024-07-09T10:11:30.890' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4628, CAST(N'2024-07-09T10:11:34.383' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4629, CAST(N'2024-07-09T10:11:37.427' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4630, CAST(N'2024-07-09T10:11:40.320' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4631, CAST(N'2024-07-09T10:13:32.727' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4632, CAST(N'2024-07-09T10:13:32.727' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4633, CAST(N'2024-07-09T10:13:32.767' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4634, CAST(N'2024-07-09T10:13:51.393' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4635, CAST(N'2024-07-09T10:13:53.890' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4636, CAST(N'2024-07-09T10:14:06.180' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4637, CAST(N'2024-07-09T10:14:10.060' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4638, CAST(N'2024-07-09T10:14:12.767' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4639, CAST(N'2024-07-09T10:14:16.090' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4640, CAST(N'2024-07-09T10:14:19.503' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4641, CAST(N'2024-07-09T10:14:22.003' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4642, CAST(N'2024-07-09T10:15:17.390' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4643, CAST(N'2024-07-09T10:15:17.390' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4644, CAST(N'2024-07-09T10:15:17.423' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4645, CAST(N'2024-07-09T10:15:22.587' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4646, CAST(N'2024-07-09T10:15:22.587' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4647, CAST(N'2024-07-09T10:15:22.627' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4648, CAST(N'2024-07-09T10:15:30.933' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4649, CAST(N'2024-07-09T10:15:33.523' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4650, CAST(N'2024-07-09T10:15:50.423' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4651, CAST(N'2024-07-09T10:16:02.500' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4652, CAST(N'2024-07-09T10:16:02.500' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4653, CAST(N'2024-07-09T10:16:02.580' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4654, CAST(N'2024-07-09T10:16:02.780' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4655, CAST(N'2024-07-09T10:16:02.780' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4656, CAST(N'2024-07-09T10:16:02.833' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4657, CAST(N'2024-07-09T10:16:06.513' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4658, CAST(N'2024-07-09T10:16:09.927' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4659, CAST(N'2024-07-09T10:16:26.857' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4660, CAST(N'2024-07-09T10:16:30.417' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4661, CAST(N'2024-07-09T10:16:36.430' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4662, CAST(N'2024-07-09T10:16:38.693' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4663, CAST(N'2024-07-09T10:16:50.247' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4664, CAST(N'2024-07-09T10:16:53.477' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4665, CAST(N'2024-07-09T10:17:44.673' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4666, CAST(N'2024-07-09T10:17:44.673' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4667, CAST(N'2024-07-09T10:17:44.693' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4668, CAST(N'2024-07-09T10:17:53.303' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4669, CAST(N'2024-07-09T10:17:57.687' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4670, CAST(N'2024-07-09T10:18:04.100' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4671, CAST(N'2024-07-09T10:18:06.977' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4672, CAST(N'2024-07-09T10:25:12.433' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4673, CAST(N'2024-07-09T10:25:12.617' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4674, CAST(N'2024-07-09T10:25:12.617' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4675, CAST(N'2024-07-09T10:26:57.507' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4676, CAST(N'2024-07-09T10:26:57.557' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4677, CAST(N'2024-07-09T10:27:02.527' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4678, CAST(N'2024-07-09T10:27:02.527' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4679, CAST(N'2024-07-09T10:27:02.540' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4680, CAST(N'2024-07-09T10:27:22.257' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4681, CAST(N'2024-07-09T10:27:22.270' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4682, CAST(N'2024-07-09T10:27:22.303' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4683, CAST(N'2024-07-09T10:27:48.560' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4684, CAST(N'2024-07-09T10:27:48.563' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4685, CAST(N'2024-07-09T10:27:48.600' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4686, CAST(N'2024-07-09T10:29:39.500' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4687, CAST(N'2024-07-09T10:29:39.500' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4688, CAST(N'2024-07-09T10:29:39.560' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4689, CAST(N'2024-07-09T10:29:52.253' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4690, CAST(N'2024-07-09T10:29:56.320' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4691, CAST(N'2024-07-09T10:29:59.200' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4692, CAST(N'2024-07-09T10:30:23.650' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4693, CAST(N'2024-07-09T10:30:26.423' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4694, CAST(N'2024-07-09T10:32:21.033' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4695, CAST(N'2024-07-09T10:35:30.453' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4696, CAST(N'2024-07-09T10:35:41.787' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4697, CAST(N'2024-07-09T10:47:23.537' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4698, CAST(N'2024-07-09T10:47:23.607' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4699, CAST(N'2024-07-09T10:47:52.373' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4700, CAST(N'2024-07-09T10:47:52.377' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4701, CAST(N'2024-07-09T10:47:52.377' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4702, CAST(N'2024-07-09T10:47:59.073' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4703, CAST(N'2024-07-09T10:49:31.053' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4704, CAST(N'2024-07-09T10:50:10.420' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4705, CAST(N'2024-07-09T10:50:10.483' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4706, CAST(N'2024-07-09T10:50:14.837' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4707, CAST(N'2024-07-09T10:50:14.837' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4708, CAST(N'2024-07-09T10:50:14.847' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4709, CAST(N'2024-07-09T10:54:15.803' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4710, CAST(N'2024-07-09T10:54:15.860' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4711, CAST(N'2024-07-09T10:55:10.563' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4712, CAST(N'2024-07-09T10:55:10.593' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4713, CAST(N'2024-07-09T10:55:10.593' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4714, CAST(N'2024-07-09T10:55:13.223' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4715, CAST(N'2024-07-09T10:55:13.223' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4716, CAST(N'2024-07-09T10:55:13.267' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4717, CAST(N'2024-07-09T11:04:25.920' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4718, CAST(N'2024-07-09T11:04:25.920' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4719, CAST(N'2024-07-09T11:04:25.930' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4720, CAST(N'2024-07-09T11:04:29.580' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4721, CAST(N'2024-07-09T11:04:29.630' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4722, CAST(N'2024-07-09T11:04:29.630' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4723, CAST(N'2024-07-09T11:05:29.123' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4724, CAST(N'2024-07-09T11:05:29.123' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4725, CAST(N'2024-07-09T11:05:29.157' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4726, CAST(N'2024-07-09T11:06:25.920' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4727, CAST(N'2024-07-09T11:06:25.940' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4728, CAST(N'2024-07-09T11:06:25.940' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4729, CAST(N'2024-07-09T11:06:30.517' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4730, CAST(N'2024-07-09T11:06:30.517' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4731, CAST(N'2024-07-09T11:06:30.563' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4732, CAST(N'2024-07-09T11:06:38.990' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4733, CAST(N'2024-07-09T11:06:38.990' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4734, CAST(N'2024-07-09T11:06:39.053' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4735, CAST(N'2024-07-09T11:10:31.653' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4736, CAST(N'2024-07-09T11:10:31.693' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4737, CAST(N'2024-07-09T11:10:31.767' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4738, CAST(N'2024-07-09T11:10:46.027' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4739, CAST(N'2024-07-09T11:10:46.027' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4740, CAST(N'2024-07-09T11:10:46.097' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4741, CAST(N'2024-07-09T11:50:38.570' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4742, CAST(N'2024-07-09T11:50:38.633' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4743, CAST(N'2024-07-09T11:51:46.350' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4744, CAST(N'2024-07-09T11:51:46.423' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4745, CAST(N'2024-07-09T11:52:57.643' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4746, CAST(N'2024-07-09T11:52:57.677' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4747, CAST(N'2024-07-09T11:52:57.737' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4748, CAST(N'2024-07-09T11:55:32.430' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4749, CAST(N'2024-07-09T11:55:32.523' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4750, CAST(N'2024-07-09T11:56:00.340' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4751, CAST(N'2024-07-09T11:56:00.343' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4752, CAST(N'2024-07-09T11:56:00.377' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4753, CAST(N'2024-07-09T11:58:02.140' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4754, CAST(N'2024-07-09T11:58:02.140' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4755, CAST(N'2024-07-09T11:58:02.157' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4756, CAST(N'2024-07-09T11:58:45.830' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4757, CAST(N'2024-07-09T11:58:45.893' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4758, CAST(N'2024-07-09T11:59:47.093' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4759, CAST(N'2024-07-09T11:59:47.163' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4760, CAST(N'2024-07-09T12:07:10.890' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4761, CAST(N'2024-07-09T12:07:10.967' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4762, CAST(N'2024-07-09T12:07:10.973' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4763, CAST(N'2024-07-09T12:10:05.127' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4764, CAST(N'2024-07-09T12:10:05.127' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4765, CAST(N'2024-07-09T12:10:05.170' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4766, CAST(N'2024-07-09T12:10:11.727' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4767, CAST(N'2024-07-09T12:10:12.247' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4768, CAST(N'2024-07-09T12:14:01.690' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4769, CAST(N'2024-07-09T12:14:01.757' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4770, CAST(N'2024-07-09T12:14:40.650' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4771, CAST(N'2024-07-09T12:14:40.657' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4772, CAST(N'2024-07-09T12:16:02.783' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4773, CAST(N'2024-07-09T12:16:23.953' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4774, CAST(N'2024-07-09T12:16:23.953' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4775, CAST(N'2024-07-09T12:16:27.897' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4776, CAST(N'2024-07-09T12:16:32.533' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4777, CAST(N'2024-07-09T12:16:32.533' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4778, CAST(N'2024-07-09T12:16:32.547' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4779, CAST(N'2024-07-09T12:16:34.340' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4780, CAST(N'2024-07-09T12:16:35.053' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4781, CAST(N'2024-07-09T12:16:35.053' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4782, CAST(N'2024-07-09T12:16:35.107' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4783, CAST(N'2024-07-09T12:16:41.933' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4784, CAST(N'2024-07-09T12:16:43.580' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4785, CAST(N'2024-07-09T12:16:49.080' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4786, CAST(N'2024-07-09T12:16:49.080' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4787, CAST(N'2024-07-09T12:16:49.110' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4788, CAST(N'2024-07-09T12:17:46.257' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4789, CAST(N'2024-07-09T12:17:46.293' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4790, CAST(N'2024-07-09T12:17:46.293' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4791, CAST(N'2024-07-09T12:18:44.890' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4792, CAST(N'2024-07-09T12:18:44.917' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4793, CAST(N'2024-07-09T12:18:44.933' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4794, CAST(N'2024-07-09T12:19:40.940' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4795, CAST(N'2024-07-09T12:19:40.940' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4796, CAST(N'2024-07-09T12:19:40.970' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4797, CAST(N'2024-07-09T12:20:00.947' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4798, CAST(N'2024-07-09T12:20:00.957' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4799, CAST(N'2024-07-09T12:20:00.973' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4800, CAST(N'2024-07-09T12:20:26.937' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4801, CAST(N'2024-07-09T12:20:26.937' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4802, CAST(N'2024-07-09T12:20:26.953' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4803, CAST(N'2024-07-09T12:22:34.830' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4804, CAST(N'2024-07-09T12:22:35.167' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4805, CAST(N'2024-07-09T12:22:41.457' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4806, CAST(N'2024-07-09T12:22:41.457' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4807, CAST(N'2024-07-09T12:22:41.470' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4808, CAST(N'2024-07-09T12:23:36.793' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4809, CAST(N'2024-07-09T12:23:36.873' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4810, CAST(N'2024-07-09T12:23:50.520' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4811, CAST(N'2024-07-09T12:23:54.567' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4812, CAST(N'2024-07-09T12:23:54.567' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4813, CAST(N'2024-07-09T12:23:54.600' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4814, CAST(N'2024-07-09T12:23:59.490' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4815, CAST(N'2024-07-09T12:24:05.600' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4816, CAST(N'2024-07-09T12:24:05.617' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4817, CAST(N'2024-07-09T12:24:05.653' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4818, CAST(N'2024-07-09T12:28:02.437' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4819, CAST(N'2024-07-09T12:28:02.503' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4820, CAST(N'2024-07-09T12:32:45.930' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4821, CAST(N'2024-07-09T12:32:46.040' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4822, CAST(N'2024-07-09T12:34:01.933' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4823, CAST(N'2024-07-09T12:34:01.933' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4824, CAST(N'2024-07-09T12:34:02.020' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4825, CAST(N'2024-07-09T12:35:32.577' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4826, CAST(N'2024-07-09T12:35:32.583' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4827, CAST(N'2024-07-09T12:35:32.593' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4828, CAST(N'2024-07-09T12:35:49.640' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4829, CAST(N'2024-07-09T12:35:49.960' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4830, CAST(N'2024-07-09T12:35:49.960' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4831, CAST(N'2024-07-09T12:37:35.687' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4832, CAST(N'2024-07-09T12:37:35.687' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4833, CAST(N'2024-07-09T12:37:39.340' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4834, CAST(N'2024-07-09T12:40:26.010' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4835, CAST(N'2024-07-09T12:40:49.053' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4836, CAST(N'2024-07-09T12:40:52.143' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4837, CAST(N'2024-07-09T12:41:00.017' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4838, CAST(N'2024-07-09T12:46:22.017' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4839, CAST(N'2024-07-09T12:46:22.017' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4840, CAST(N'2024-07-09T12:46:22.043' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4841, CAST(N'2024-07-09T12:47:10.430' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4842, CAST(N'2024-07-09T13:01:50.440' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4843, CAST(N'2024-07-09T13:02:26.593' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4844, CAST(N'2024-07-09T13:02:37.547' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4845, CAST(N'2024-07-09T13:03:17.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4846, CAST(N'2024-07-09T13:03:33.327' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4847, CAST(N'2024-07-09T13:03:33.473' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4848, CAST(N'2024-07-09T13:03:33.473' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4849, CAST(N'2024-07-09T13:03:35.670' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4850, CAST(N'2024-07-09T13:15:08.173' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4851, CAST(N'2024-07-09T13:15:09.133' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4852, CAST(N'2024-07-09T13:15:13.600' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4853, CAST(N'2024-07-09T13:15:13.600' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4854, CAST(N'2024-07-09T13:15:13.633' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4855, CAST(N'2024-07-09T13:16:09.330' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4856, CAST(N'2024-07-09T13:16:09.330' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4857, CAST(N'2024-07-09T13:16:09.383' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4858, CAST(N'2024-07-09T13:16:46.133' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4859, CAST(N'2024-07-09T13:16:46.147' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4860, CAST(N'2024-07-09T13:16:46.173' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4861, CAST(N'2024-07-09T13:18:53.150' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4862, CAST(N'2024-07-09T13:18:53.150' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4863, CAST(N'2024-07-09T13:18:53.213' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4864, CAST(N'2024-07-09T13:20:05.683' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4865, CAST(N'2024-07-09T13:20:05.687' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4866, CAST(N'2024-07-09T13:20:05.723' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4867, CAST(N'2024-07-09T13:20:20.040' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4868, CAST(N'2024-07-09T13:20:20.040' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4869, CAST(N'2024-07-09T13:20:20.100' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4870, CAST(N'2024-07-09T13:25:23.997' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4871, CAST(N'2024-07-09T13:25:24.410' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4872, CAST(N'2024-07-09T13:25:24.433' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4873, CAST(N'2024-07-09T13:26:28.967' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4874, CAST(N'2024-07-09T13:26:28.967' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4875, CAST(N'2024-07-09T13:26:29.033' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4876, CAST(N'2024-07-09T13:30:40.907' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4877, CAST(N'2024-07-09T13:30:40.907' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4878, CAST(N'2024-07-09T13:30:40.923' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4879, CAST(N'2024-07-09T13:30:56.330' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4880, CAST(N'2024-07-09T13:30:56.330' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4881, CAST(N'2024-07-09T13:30:56.397' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4882, CAST(N'2024-07-09T13:32:24.527' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4883, CAST(N'2024-07-09T13:32:24.527' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4884, CAST(N'2024-07-09T13:32:24.543' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4885, CAST(N'2024-07-09T13:32:36.347' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4886, CAST(N'2024-07-09T13:32:36.380' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4887, CAST(N'2024-07-09T13:32:36.380' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4888, CAST(N'2024-07-09T13:34:56.287' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4889, CAST(N'2024-07-09T13:34:56.477' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4890, CAST(N'2024-07-09T13:34:56.490' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4891, CAST(N'2024-07-09T13:35:12.277' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4892, CAST(N'2024-07-09T13:35:12.320' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4893, CAST(N'2024-07-09T13:35:12.330' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4894, CAST(N'2024-07-09T13:35:18.507' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4895, CAST(N'2024-07-09T13:35:18.507' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4896, CAST(N'2024-07-09T13:35:18.550' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4897, CAST(N'2024-07-09T13:36:01.600' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4898, CAST(N'2024-07-09T13:36:01.677' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4899, CAST(N'2024-07-09T13:36:01.707' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4900, CAST(N'2024-07-09T13:42:29.790' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4901, CAST(N'2024-07-09T13:42:29.790' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4902, CAST(N'2024-07-09T13:42:29.867' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4903, CAST(N'2024-07-09T13:44:02.093' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4904, CAST(N'2024-07-09T13:44:02.097' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4905, CAST(N'2024-07-09T13:44:02.093' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4906, CAST(N'2024-07-09T13:44:37.087' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4907, CAST(N'2024-07-09T13:44:37.097' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4908, CAST(N'2024-07-09T13:44:37.177' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4909, CAST(N'2024-07-09T13:54:43.510' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4910, CAST(N'2024-07-09T13:54:43.510' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4911, CAST(N'2024-07-09T13:54:43.560' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4912, CAST(N'2024-07-09T13:55:17.190' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4913, CAST(N'2024-07-09T13:55:17.203' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4914, CAST(N'2024-07-09T13:55:17.203' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4915, CAST(N'2024-07-09T13:55:27.360' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4916, CAST(N'2024-07-09T13:55:27.370' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4917, CAST(N'2024-07-09T13:55:27.397' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4918, CAST(N'2024-07-09T13:56:21.037' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4919, CAST(N'2024-07-09T13:56:23.210' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4920, CAST(N'2024-07-09T14:07:15.343' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4921, CAST(N'2024-07-09T14:12:55.407' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4922, CAST(N'2024-07-09T14:13:06.480' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4923, CAST(N'2024-07-09T14:13:06.523' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4924, CAST(N'2024-07-09T14:13:06.537' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4925, CAST(N'2024-07-09T14:53:44.083' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4926, CAST(N'2024-07-09T14:54:27.793' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4927, CAST(N'2024-07-09T14:54:28.463' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4928, CAST(N'2024-07-09T14:54:28.470' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4929, CAST(N'2024-07-09T14:55:06.083' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4930, CAST(N'2024-07-09T14:55:21.853' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10012 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4931, CAST(N'2024-07-09T14:55:38.700' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10012 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4932, CAST(N'2024-07-09T14:56:22.340' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4933, CAST(N'2024-07-09T14:56:22.340' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4934, CAST(N'2024-07-09T14:56:22.377' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4935, CAST(N'2024-07-09T14:56:25.567' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4936, CAST(N'2024-07-09T22:38:44.487' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4937, CAST(N'2024-07-09T22:39:03.240' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4938, CAST(N'2024-07-09T22:39:08.807' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4939, CAST(N'2024-07-09T22:39:22.280' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4940, CAST(N'2024-07-09T22:39:23.897' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4941, CAST(N'2024-07-09T22:39:23.897' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4942, CAST(N'2024-07-09T22:59:21.410' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4943, CAST(N'2024-07-09T22:59:40.340' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4944, CAST(N'2024-07-09T22:59:55.197' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4945, CAST(N'2024-07-09T22:59:58.350' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4946, CAST(N'2024-07-09T23:00:20.883' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4947, CAST(N'2024-07-09T23:00:59.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4948, CAST(N'2024-07-09T23:01:17.770' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4949, CAST(N'2024-07-09T23:08:40.750' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4950, CAST(N'2024-07-09T23:08:46.507' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4951, CAST(N'2024-07-09T23:08:52.113' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4952, CAST(N'2024-07-09T23:08:58.853' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4953, CAST(N'2024-07-09T23:08:59.157' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4954, CAST(N'2024-07-09T23:09:07.443' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4955, CAST(N'2024-07-09T23:10:49.240' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4956, CAST(N'2024-07-09T23:11:01.670' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4957, CAST(N'2024-07-10T09:48:24.900' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4958, CAST(N'2024-07-10T09:48:24.940' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log counts by month.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4959, CAST(N'2024-07-10T09:48:25.023' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4960, CAST(N'2024-07-10T09:49:01.253' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4961, CAST(N'2024-07-10T09:49:01.290' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log counts by month.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4962, CAST(N'2024-07-10T09:49:01.323' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4963, CAST(N'2024-07-10T09:49:47.550' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4964, CAST(N'2024-07-10T09:49:47.593' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log counts by month.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4965, CAST(N'2024-07-10T09:49:47.663' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4966, CAST(N'2024-07-10T09:49:52.707' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log counts by month.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4967, CAST(N'2024-07-10T09:49:52.747' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4968, CAST(N'2024-07-10T09:49:52.780' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4969, CAST(N'2024-07-10T09:50:18.427' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log counts by month.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4970, CAST(N'2024-07-10T09:50:18.500' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4971, CAST(N'2024-07-10T09:50:18.533' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4972, CAST(N'2024-07-10T09:51:11.763' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4973, CAST(N'2024-07-10T09:51:11.843' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log counts by month.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4974, CAST(N'2024-07-10T09:51:11.880' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4975, CAST(N'2024-07-10T09:52:15.427' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4976, CAST(N'2024-07-10T09:52:15.427' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4977, CAST(N'2024-07-10T09:52:15.487' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4978, CAST(N'2024-07-10T09:52:52.903' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4979, CAST(N'2024-07-10T09:53:26.767' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4980, CAST(N'2024-07-10T09:53:26.803' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log counts by month.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4981, CAST(N'2024-07-10T09:53:26.840' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4982, CAST(N'2024-07-10T10:42:14.440' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4983, CAST(N'2024-07-10T10:42:14.487' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4984, CAST(N'2024-07-10T10:42:14.540' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'Error fetching log counts by month.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4985, CAST(N'2024-07-10T11:02:26.677' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4986, CAST(N'2024-07-10T11:02:26.677' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4987, CAST(N'2024-07-10T11:02:26.740' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4988, CAST(N'2024-07-10T11:31:46.440' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4989, CAST(N'2024-07-10T11:31:46.440' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4990, CAST(N'2024-07-10T11:31:46.517' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4991, CAST(N'2024-07-10T11:45:49.030' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4992, CAST(N'2024-07-10T11:45:49.030' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4993, CAST(N'2024-07-10T11:47:09.317' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4994, CAST(N'2024-07-10T11:47:09.690' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No filtered NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4995, CAST(N'2024-07-10T11:47:09.690' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4996, CAST(N'2024-07-10T11:50:59.213' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4997, CAST(N'2024-07-10T11:50:59.287' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4998, CAST(N'2024-07-10T11:50:59.287' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (4999, CAST(N'2024-07-10T11:52:21.580' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5000, CAST(N'2024-07-10T11:52:21.637' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5001, CAST(N'2024-07-10T11:52:21.637' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5002, CAST(N'2024-07-10T11:53:18.817' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5003, CAST(N'2024-07-10T11:53:18.883' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5004, CAST(N'2024-07-10T11:53:18.883' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5005, CAST(N'2024-07-10T11:55:08.730' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5006, CAST(N'2024-07-10T11:55:08.793' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5007, CAST(N'2024-07-10T11:55:08.793' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5008, CAST(N'2024-07-10T11:56:00.633' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5009, CAST(N'2024-07-10T11:56:00.633' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5010, CAST(N'2024-07-10T11:56:00.660' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5011, CAST(N'2024-07-10T11:56:13.127' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5012, CAST(N'2024-07-10T11:56:13.197' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5013, CAST(N'2024-07-10T11:56:13.197' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5014, CAST(N'2024-07-10T11:58:20.077' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5015, CAST(N'2024-07-10T11:58:20.080' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5016, CAST(N'2024-07-10T11:58:20.093' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5017, CAST(N'2024-07-10T11:59:15.760' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5018, CAST(N'2024-07-10T11:59:15.767' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5019, CAST(N'2024-07-10T11:59:15.810' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5020, CAST(N'2024-07-10T11:59:28.963' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5021, CAST(N'2024-07-10T11:59:28.963' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully Get filtered NLogs', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5022, CAST(N'2024-07-10T11:59:28.963' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5023, CAST(N'2024-07-10T11:59:40.660' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5024, CAST(N'2024-07-10T12:01:22.610' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5025, CAST(N'2024-07-10T12:01:22.610' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5026, CAST(N'2024-07-10T12:05:02.970' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5027, CAST(N'2024-07-10T12:05:03.030' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5028, CAST(N'2024-07-10T12:08:22.317' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5029, CAST(N'2024-07-10T12:08:22.390' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5030, CAST(N'2024-07-10T12:09:04.117' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5031, CAST(N'2024-07-10T12:09:04.130' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5032, CAST(N'2024-07-10T12:10:33.590' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5033, CAST(N'2024-07-10T12:10:33.593' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5034, CAST(N'2024-07-10T12:10:41.120' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5035, CAST(N'2024-07-10T12:10:41.150' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5036, CAST(N'2024-07-10T12:10:44.480' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5037, CAST(N'2024-07-10T12:10:44.967' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5038, CAST(N'2024-07-10T12:11:00.473' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5039, CAST(N'2024-07-10T12:11:00.537' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5040, CAST(N'2024-07-10T12:15:07.753' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5041, CAST(N'2024-07-10T12:15:07.803' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5042, CAST(N'2024-07-10T12:16:01.090' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5043, CAST(N'2024-07-10T12:16:01.097' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5044, CAST(N'2024-07-10T12:19:59.803' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5045, CAST(N'2024-07-10T12:19:59.867' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5046, CAST(N'2024-07-10T12:20:05.303' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5047, CAST(N'2024-07-10T12:20:08.163' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5048, CAST(N'2024-07-10T12:20:19.357' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5049, CAST(N'2024-07-10T12:20:21.483' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5050, CAST(N'2024-07-10T12:20:27.830' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5051, CAST(N'2024-07-10T12:20:30.610' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5052, CAST(N'2024-07-10T12:21:04.930' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5053, CAST(N'2024-07-10T12:21:06.450' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5054, CAST(N'2024-07-10T12:24:24.010' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5055, CAST(N'2024-07-10T12:24:24.067' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5056, CAST(N'2024-07-10T12:24:32.770' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5057, CAST(N'2024-07-10T12:25:08.750' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5058, CAST(N'2024-07-10T12:25:08.773' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5059, CAST(N'2024-07-10T12:25:18.947' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5060, CAST(N'2024-07-10T12:25:23.100' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5061, CAST(N'2024-07-10T12:25:52.027' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5062, CAST(N'2024-07-10T12:33:49.250' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5063, CAST(N'2024-07-10T12:33:49.343' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5064, CAST(N'2024-07-10T12:34:33.690' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5065, CAST(N'2024-07-10T12:34:33.703' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5066, CAST(N'2024-07-10T12:35:06.797' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5067, CAST(N'2024-07-10T12:35:06.897' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5068, CAST(N'2024-07-10T12:35:12.617' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5069, CAST(N'2024-07-10T12:35:12.953' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5070, CAST(N'2024-07-10T12:37:50.637' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5071, CAST(N'2024-07-10T12:37:50.703' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5072, CAST(N'2024-07-10T12:38:03.497' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5073, CAST(N'2024-07-10T12:38:03.810' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5074, CAST(N'2024-07-10T12:40:45.533' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5075, CAST(N'2024-07-10T12:40:45.587' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5076, CAST(N'2024-07-10T12:40:50.547' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5077, CAST(N'2024-07-10T12:40:56.880' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5078, CAST(N'2024-07-10T12:46:48.763' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5079, CAST(N'2024-07-10T12:47:00.620' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5080, CAST(N'2024-07-10T12:49:22.473' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5081, CAST(N'2024-07-10T12:49:56.050' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5082, CAST(N'2024-07-10T12:50:43.723' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5083, CAST(N'2024-07-10T12:50:43.823' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5084, CAST(N'2024-07-10T12:50:51.747' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5085, CAST(N'2024-07-10T12:50:51.780' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5086, CAST(N'2024-07-10T12:50:57.727' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5087, CAST(N'2024-07-10T12:51:01.970' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5088, CAST(N'2024-07-10T12:51:47.603' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5089, CAST(N'2024-07-10T12:52:05.107' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5090, CAST(N'2024-07-10T12:54:25.140' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5091, CAST(N'2024-07-10T12:55:02.380' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5092, CAST(N'2024-07-10T12:55:15.547' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5093, CAST(N'2024-07-10T12:55:22.057' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5094, CAST(N'2024-07-10T12:55:49.030' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5095, CAST(N'2024-07-10T12:55:49.177' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5096, CAST(N'2024-07-10T12:55:54.840' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5097, CAST(N'2024-07-10T12:55:58.260' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5098, CAST(N'2024-07-10T13:00:36.753' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5099, CAST(N'2024-07-10T13:01:41.017' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5100, CAST(N'2024-07-10T13:01:41.070' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5101, CAST(N'2024-07-10T13:01:46.017' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5102, CAST(N'2024-07-10T13:01:48.720' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5103, CAST(N'2024-07-10T13:02:04.160' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5104, CAST(N'2024-07-10T13:02:13.807' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5105, CAST(N'2024-07-10T13:02:21.923' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5106, CAST(N'2024-07-10T13:04:42.430' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5107, CAST(N'2024-07-10T13:07:27.777' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5108, CAST(N'2024-07-10T13:08:01.640' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5109, CAST(N'2024-07-10T13:09:47.940' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5110, CAST(N'2024-07-10T13:13:53.737' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5111, CAST(N'2024-07-10T13:14:56.833' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5112, CAST(N'2024-07-10T13:15:23.773' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5113, CAST(N'2024-07-10T13:15:35.807' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5114, CAST(N'2024-07-10T13:19:50.893' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5115, CAST(N'2024-07-10T13:20:11.520' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5116, CAST(N'2024-07-10T13:20:40.267' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5117, CAST(N'2024-07-10T13:22:30.667' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5118, CAST(N'2024-07-10T13:22:30.773' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5119, CAST(N'2024-07-10T13:23:06.997' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5120, CAST(N'2024-07-10T13:23:15.863' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5121, CAST(N'2024-07-10T13:25:51.313' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5122, CAST(N'2024-07-10T13:25:51.363' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5123, CAST(N'2024-07-10T13:26:04.977' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5124, CAST(N'2024-07-10T13:26:11.953' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5125, CAST(N'2024-07-10T13:26:49.263' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5126, CAST(N'2024-07-10T13:26:58.830' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5127, CAST(N'2024-07-10T13:27:13.167' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5128, CAST(N'2024-07-10T13:27:18.177' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5129, CAST(N'2024-06-05T00:00:00.000' AS DateTime), N'error', N'Student', N'manual', NULL)
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5130, CAST(N'2024-07-11T00:29:04.687' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.StudentController', N'No NLogs found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5131, CAST(N'2024-07-11T00:29:09.080' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5132, CAST(N'2024-07-11T00:29:11.463' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5133, CAST(N'2024-07-11T00:29:14.573' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5134, CAST(N'2024-07-11T00:29:14.663' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5135, CAST(N'2024-07-11T00:30:19.790' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5136, CAST(N'2024-07-11T00:30:19.840' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5137, CAST(N'2024-07-11T08:41:23.863' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5138, CAST(N'2024-07-11T08:41:23.940' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5139, CAST(N'2024-07-11T08:41:35.497' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5140, CAST(N'2024-07-11T08:41:35.497' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5141, CAST(N'2024-07-11T08:42:53.710' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5142, CAST(N'2024-07-11T08:42:55.557' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5143, CAST(N'2024-07-11T08:44:21.527' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5144, CAST(N'2024-07-11T08:44:21.553' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5145, CAST(N'2024-07-11T08:46:39.040' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5146, CAST(N'2024-07-11T08:46:39.123' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5147, CAST(N'2024-07-11T08:50:30.787' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5148, CAST(N'2024-07-11T08:50:30.860' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5149, CAST(N'2024-07-11T08:50:31.777' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5150, CAST(N'2024-07-11T08:50:35.253' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5151, CAST(N'2024-07-11T08:51:49.047' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5152, CAST(N'2024-07-11T08:51:49.097' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5153, CAST(N'2024-07-11T08:52:42.923' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5154, CAST(N'2024-07-11T08:52:43.000' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5155, CAST(N'2024-07-11T08:52:44.237' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5156, CAST(N'2024-07-11T08:52:47.067' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5157, CAST(N'2024-07-11T08:52:49.213' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5158, CAST(N'2024-07-11T08:52:51.597' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5159, CAST(N'2024-07-11T08:53:56.973' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5160, CAST(N'2024-07-11T08:53:56.983' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5161, CAST(N'2024-07-11T08:54:03.850' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5162, CAST(N'2024-07-11T08:54:05.637' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5163, CAST(N'2024-07-11T08:54:07.427' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5164, CAST(N'2024-07-11T08:55:25.417' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5165, CAST(N'2024-07-11T08:55:25.417' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5166, CAST(N'2024-07-11T08:57:38.113' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5167, CAST(N'2024-07-11T08:57:38.147' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5168, CAST(N'2024-07-11T08:58:03.683' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5169, CAST(N'2024-07-11T08:58:03.720' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5170, CAST(N'2024-07-11T09:00:35.843' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5171, CAST(N'2024-07-11T09:00:35.883' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5172, CAST(N'2024-07-11T09:00:56.770' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5173, CAST(N'2024-07-11T09:01:18.330' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5174, CAST(N'2024-07-11T09:08:09.910' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5175, CAST(N'2024-07-11T09:08:09.920' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5176, CAST(N'2024-07-11T09:08:54.220' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5177, CAST(N'2024-07-11T09:08:57.407' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5178, CAST(N'2024-07-11T09:09:16.830' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5179, CAST(N'2024-07-11T09:09:23.973' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5180, CAST(N'2024-07-11T09:10:00.283' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5181, CAST(N'2024-07-11T09:10:00.347' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5182, CAST(N'2024-07-11T09:10:40.013' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5183, CAST(N'2024-07-11T09:10:44.503' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Unable to find the Logs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5184, CAST(N'2024-07-11T09:14:54.137' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5185, CAST(N'2024-07-11T09:14:54.247' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5186, CAST(N'2024-07-11T09:14:56.577' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5187, CAST(N'2024-07-11T09:32:17.480' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5188, CAST(N'2024-07-11T09:32:17.550' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5189, CAST(N'2024-07-11T09:33:14.810' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5190, CAST(N'2024-07-11T09:33:19.013' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5191, CAST(N'2024-07-11T09:33:21.167' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5192, CAST(N'2024-07-11T09:33:36.090' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5193, CAST(N'2024-07-11T09:33:40.393' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5194, CAST(N'2024-07-11T09:34:38.573' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5195, CAST(N'2024-07-11T09:34:38.600' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5196, CAST(N'2024-07-11T09:34:43.650' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5197, CAST(N'2024-07-11T09:39:54.020' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5198, CAST(N'2024-07-11T09:39:54.223' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5199, CAST(N'2024-07-11T09:40:14.470' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5200, CAST(N'2024-07-11T09:40:14.490' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5201, CAST(N'2024-07-11T09:40:24.830' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5202, CAST(N'2024-07-11T09:40:24.860' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5203, CAST(N'2024-07-11T09:40:53.463' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5204, CAST(N'2024-07-11T09:40:53.510' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5205, CAST(N'2024-07-11T09:42:07.783' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5206, CAST(N'2024-07-11T09:42:07.820' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5207, CAST(N'2024-07-11T09:42:11.303' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5208, CAST(N'2024-07-11T09:48:48.923' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5209, CAST(N'2024-07-11T09:49:38.647' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5210, CAST(N'2024-07-11T09:49:41.210' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5211, CAST(N'2024-07-11T09:56:22.300' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5212, CAST(N'2024-07-11T09:59:51.617' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5213, CAST(N'2024-07-11T10:00:42.570' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5214, CAST(N'2024-07-11T10:02:49.410' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5215, CAST(N'2024-07-11T10:04:26.603' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5216, CAST(N'2024-07-11T10:04:43.873' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5217, CAST(N'2024-07-11T10:08:07.350' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5218, CAST(N'2024-07-11T10:09:21.073' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5219, CAST(N'2024-07-11T10:09:44.310' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5220, CAST(N'2024-07-11T10:09:48.883' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5221, CAST(N'2024-07-11T11:26:28.720' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5222, CAST(N'2024-07-11T12:23:50.523' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5223, CAST(N'2024-07-11T12:23:50.577' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5224, CAST(N'2024-07-11T12:39:59.110' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5225, CAST(N'2024-07-11T12:39:59.170' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5226, CAST(N'2024-07-11T12:40:01.793' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5227, CAST(N'2024-07-11T12:40:11.440' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5228, CAST(N'2024-07-11T12:40:15.677' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5229, CAST(N'2024-07-11T12:41:15.127' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5230, CAST(N'2024-07-11T12:41:20.960' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5231, CAST(N'2024-07-11T12:41:45.967' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5232, CAST(N'2024-07-11T12:42:37.557' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5233, CAST(N'2024-07-11T12:43:11.493' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5234, CAST(N'2024-07-11T12:43:27.430' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5235, CAST(N'2024-07-11T12:57:00.537' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5236, CAST(N'2024-07-11T12:57:18.097' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5237, CAST(N'2024-07-11T12:57:18.160' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5238, CAST(N'2024-07-11T12:57:47.613' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5239, CAST(N'2024-07-11T12:57:51.083' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5240, CAST(N'2024-07-11T12:59:25.937' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5241, CAST(N'2024-07-11T12:59:26.003' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5242, CAST(N'2024-07-11T13:00:32.587' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5243, CAST(N'2024-07-11T13:09:36.047' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5244, CAST(N'2024-07-11T13:09:43.413' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5245, CAST(N'2024-07-11T13:13:53.627' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5246, CAST(N'2024-07-11T13:13:55.337' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5247, CAST(N'2024-07-11T13:13:56.520' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5248, CAST(N'2024-07-11T13:13:59.133' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5249, CAST(N'2024-07-11T13:14:00.383' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50018 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5250, CAST(N'2024-07-11T13:14:01.493' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10012 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5251, CAST(N'2024-07-11T13:14:02.677' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50023 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5252, CAST(N'2024-07-11T13:14:03.437' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50024 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5253, CAST(N'2024-07-11T13:14:04.603' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10012 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5254, CAST(N'2024-07-11T13:14:05.493' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5255, CAST(N'2024-07-11T13:14:05.957' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50018 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5256, CAST(N'2024-07-11T13:14:06.420' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50023 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5257, CAST(N'2024-07-11T13:14:06.940' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50024 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5258, CAST(N'2024-07-11T13:14:27.013' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50018 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5259, CAST(N'2024-07-11T13:14:27.883' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50018 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5260, CAST(N'2024-07-11T13:14:28.437' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50023 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5261, CAST(N'2024-07-11T13:14:29.317' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50024 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5262, CAST(N'2024-07-11T13:15:21.367' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10012 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5263, CAST(N'2024-07-11T13:15:52.557' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5264, CAST(N'2024-07-11T13:16:00.450' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10012 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5265, CAST(N'2024-07-11T13:16:32.957' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10012 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5266, CAST(N'2024-07-11T13:17:06.483' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5267, CAST(N'2024-07-11T13:17:10.103' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5268, CAST(N'2024-07-11T13:17:26.403' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5269, CAST(N'2024-07-11T13:17:33.703' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5270, CAST(N'2024-07-11T13:17:35.187' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50018 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5271, CAST(N'2024-07-11T13:17:35.890' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50023 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5272, CAST(N'2024-07-11T13:17:37.957' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10012 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5273, CAST(N'2024-07-11T13:18:10.037' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5274, CAST(N'2024-07-11T13:18:14.120' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5275, CAST(N'2024-07-11T13:18:30.137' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5276, CAST(N'2024-07-11T13:18:34.783' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50018 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5277, CAST(N'2024-07-11T13:18:35.740' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5278, CAST(N'2024-07-11T13:18:36.797' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10012 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5279, CAST(N'2024-07-11T13:19:01.197' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5280, CAST(N'2024-07-11T13:19:06.027' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5281, CAST(N'2024-07-11T13:19:06.660' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5282, CAST(N'2024-07-11T13:19:06.820' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5283, CAST(N'2024-07-11T13:19:06.993' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5284, CAST(N'2024-07-11T13:19:07.163' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5285, CAST(N'2024-07-11T13:19:07.330' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5286, CAST(N'2024-07-11T13:19:07.510' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5287, CAST(N'2024-07-11T13:19:07.660' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5288, CAST(N'2024-07-11T13:19:07.797' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5289, CAST(N'2024-07-11T13:19:07.930' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5290, CAST(N'2024-07-11T13:19:17.987' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5291, CAST(N'2024-07-11T13:19:24.473' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5292, CAST(N'2024-07-11T13:19:54.637' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5293, CAST(N'2024-07-11T13:20:00.270' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50018 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5294, CAST(N'2024-07-11T13:22:33.610' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5295, CAST(N'2024-07-11T13:22:38.087' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 50018 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5296, CAST(N'2024-07-11T13:23:08.253' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5297, CAST(N'2024-07-11T13:23:15.713' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully 10013 get data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5298, CAST(N'2024-07-11T13:23:46.507' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5299, CAST(N'2024-07-11T13:26:38.203' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5300, CAST(N'2024-07-11T13:26:40.223' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5301, CAST(N'2024-07-11T13:26:44.770' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5302, CAST(N'2024-07-11T13:26:45.740' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5303, CAST(N'2024-07-11T13:26:46.530' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5304, CAST(N'2024-07-11T13:26:47.837' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5305, CAST(N'2024-07-11T13:26:48.620' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5306, CAST(N'2024-07-11T13:26:49.173' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5307, CAST(N'2024-07-11T13:26:49.643' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5308, CAST(N'2024-07-11T13:27:45.403' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5309, CAST(N'2024-07-11T13:28:36.670' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5310, CAST(N'2024-07-11T13:28:42.397' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5311, CAST(N'2024-07-11T13:28:44.180' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5312, CAST(N'2024-07-11T13:28:46.673' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5313, CAST(N'2024-07-11T13:28:47.650' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5314, CAST(N'2024-07-11T13:28:48.517' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5315, CAST(N'2024-07-11T13:28:49.450' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5316, CAST(N'2024-07-11T13:28:50.093' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5317, CAST(N'2024-07-11T13:28:50.627' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5318, CAST(N'2024-07-11T13:29:25.633' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5319, CAST(N'2024-07-11T13:29:37.080' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5320, CAST(N'2024-07-11T13:31:00.937' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5321, CAST(N'2024-07-11T13:31:05.027' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5322, CAST(N'2024-07-11T13:31:35.760' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5323, CAST(N'2024-07-11T13:35:02.680' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5324, CAST(N'2024-07-11T13:35:05.003' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5325, CAST(N'2024-07-11T13:35:14.780' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5326, CAST(N'2024-07-11T13:36:04.280' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5327, CAST(N'2024-07-11T13:36:07.183' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5328, CAST(N'2024-07-11T13:36:12.473' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5329, CAST(N'2024-07-11T13:37:02.530' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5330, CAST(N'2024-07-11T13:37:08.987' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5331, CAST(N'2024-07-11T13:37:10.390' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5332, CAST(N'2024-07-11T13:37:13.083' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5333, CAST(N'2024-07-11T13:39:03.723' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5334, CAST(N'2024-07-11T13:39:06.507' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5335, CAST(N'2024-07-11T13:51:19.107' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5336, CAST(N'2024-07-11T13:51:23.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5337, CAST(N'2024-07-11T13:51:26.080' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5338, CAST(N'2024-07-11T14:02:01.580' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5339, CAST(N'2024-07-11T14:03:26.883' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5340, CAST(N'2024-07-11T14:03:27.060' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5341, CAST(N'2024-07-11T14:07:41.550' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5342, CAST(N'2024-07-11T16:03:28.957' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5343, CAST(N'2024-07-11T16:04:24.367' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5344, CAST(N'2024-07-11T16:04:38.227' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5345, CAST(N'2024-07-11T16:04:42.833' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5346, CAST(N'2024-07-11T16:04:44.460' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.TeacherController', N'No teachers found.', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5347, CAST(N'2024-07-11T16:04:46.157' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5348, CAST(N'2024-07-11T16:21:11.787' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5349, CAST(N'2024-07-11T16:21:20.617' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Teacher ID: 10038 deletion status: True', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5350, CAST(N'2024-07-11T16:21:20.800' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5351, CAST(N'2024-07-11T16:21:26.233' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5352, CAST(N'2024-07-11T16:25:27.053' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5353, CAST(N'2024-07-11T16:25:31.710' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Teacher ID: 10037 deletion status: True', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5354, CAST(N'2024-07-11T16:25:31.880' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5355, CAST(N'2024-07-11T16:26:33.883' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Teacher ID: 10037 deletion status: True', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5356, CAST(N'2024-07-11T16:27:14.373' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5357, CAST(N'2024-07-11T16:29:32.210' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Teacher ID: 10037 deletion status: True', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5358, CAST(N'2024-07-11T16:29:42.203' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5359, CAST(N'2024-07-11T16:31:37.270' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Teacher ID: 10042 deletion status: True', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5360, CAST(N'2024-07-11T16:31:44.723' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5361, CAST(N'2024-07-11T16:34:18.950' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Teacher ID: 10037 deletion status: True', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5362, CAST(N'2024-07-11T16:34:19.423' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5363, CAST(N'2024-07-11T16:36:55.597' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5364, CAST(N'2024-07-11T16:45:46.707' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5365, CAST(N'2024-07-11T16:45:56.910' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Teacher ID: 10037 deletion status: True', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5366, CAST(N'2024-07-11T16:50:00.393' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5367, CAST(N'2024-07-11T16:51:44.053' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Teacher ID: 10037 deletion status: True', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5368, CAST(N'2024-07-11T16:52:12.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5369, CAST(N'2024-07-11T16:54:14.647' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5370, CAST(N'2024-07-11T16:54:25.613' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Teacher ID: 10037 deletion status: True', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5371, CAST(N'2024-07-11T16:54:25.637' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5372, CAST(N'2024-07-11T17:00:58.930' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5373, CAST(N'2024-07-11T17:04:37.320' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5374, CAST(N'2024-07-11T17:05:20.537' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5375, CAST(N'2024-07-11T17:05:53.380' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5376, CAST(N'2024-07-11T17:07:58.017' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5377, CAST(N'2024-07-11T18:15:33.110' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5378, CAST(N'2024-07-11T18:16:23.160' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5379, CAST(N'2024-07-11T18:19:19.493' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5380, CAST(N'2024-07-11T19:54:39.497' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5381, CAST(N'2024-07-11T19:54:41.933' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5382, CAST(N'2024-07-11T19:58:02.170' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5383, CAST(N'2024-07-11T19:59:53.413' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5384, CAST(N'2024-07-11T19:59:56.417' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5385, CAST(N'2024-07-11T19:59:59.140' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5386, CAST(N'2024-07-11T20:00:00.313' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5387, CAST(N'2024-07-11T20:31:14.440' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5388, CAST(N'2024-07-11T20:31:18.253' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5389, CAST(N'2024-07-11T20:31:20.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5390, CAST(N'2024-07-11T20:31:32.867' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5391, CAST(N'2024-07-11T20:32:22.633' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5392, CAST(N'2024-07-11T20:32:24.627' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5393, CAST(N'2024-07-11T20:33:07.440' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5394, CAST(N'2024-07-11T20:35:56.303' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5395, CAST(N'2024-07-11T20:36:28.060' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5396, CAST(N'2024-07-11T20:37:06.960' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5397, CAST(N'2024-07-11T20:37:22.693' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5398, CAST(N'2024-07-11T20:41:05.523' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5399, CAST(N'2024-07-11T20:41:48.663' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5400, CAST(N'2024-07-11T20:42:02.707' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5401, CAST(N'2024-07-11T20:43:13.153' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5402, CAST(N'2024-07-11T20:43:27.503' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5403, CAST(N'2024-07-11T20:43:39.803' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5404, CAST(N'2024-07-11T20:44:08.430' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5405, CAST(N'2024-07-11T20:44:09.837' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5406, CAST(N'2024-07-11T20:44:56.493' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5407, CAST(N'2024-07-11T20:45:19.507' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5408, CAST(N'2024-07-11T20:45:22.757' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'System.Collections.Generic.List`1[System.String]', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5409, CAST(N'2024-07-11T20:45:25.710' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5410, CAST(N'2024-07-11T20:45:35.263' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5411, CAST(N'2024-07-11T20:45:38.140' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5412, CAST(N'2024-07-11T20:46:13.497' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5413, CAST(N'2024-07-11T20:46:25.140' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5414, CAST(N'2024-07-11T20:46:30.490' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5415, CAST(N'2024-07-11T20:47:22.103' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5416, CAST(N'2024-07-11T20:47:43.887' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5417, CAST(N'2024-07-11T20:47:45.407' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5418, CAST(N'2024-07-11T20:47:56.357' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5419, CAST(N'2024-07-11T21:00:52.470' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5420, CAST(N'2024-07-11T21:01:10.523' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5421, CAST(N'2024-07-11T21:02:15.473' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5422, CAST(N'2024-07-11T21:07:11.193' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5423, CAST(N'2024-07-11T21:23:26.763' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5424, CAST(N'2024-07-11T21:23:26.863' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5425, CAST(N'2024-07-11T21:23:27.983' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5426, CAST(N'2024-07-11T21:23:32.230' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5427, CAST(N'2024-07-11T21:23:52.967' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5428, CAST(N'2024-07-11T21:24:47.990' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5429, CAST(N'2024-07-11T21:24:50.377' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5430, CAST(N'2024-07-11T21:24:51.997' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5431, CAST(N'2024-07-11T21:27:14.893' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5432, CAST(N'2024-07-12T04:24:24.353' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5433, CAST(N'2024-07-12T04:24:28.877' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5434, CAST(N'2024-07-12T04:24:35.223' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5435, CAST(N'2024-07-12T04:24:37.823' AS DateTime), N'Warn', N'StudentManagementSystem.Controllers.TeacherController', N'No teachers found.', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5436, CAST(N'2024-07-12T04:24:40.100' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5437, CAST(N'2024-07-12T04:25:10.670' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5438, CAST(N'2024-07-12T04:25:17.980' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5439, CAST(N'2024-07-12T04:25:20.220' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5440, CAST(N'2024-07-12T04:25:22.180' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5441, CAST(N'2024-07-12T04:25:38.090' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5442, CAST(N'2024-07-12T04:25:43.870' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5443, CAST(N'2024-07-12T04:25:48.900' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5444, CAST(N'2024-07-12T04:25:51.363' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5445, CAST(N'2024-07-12T04:25:54.380' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5446, CAST(N'2024-07-12T04:25:57.257' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5447, CAST(N'2024-07-12T04:25:59.353' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5448, CAST(N'2024-07-12T04:27:00.567' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5449, CAST(N'2024-07-12T04:27:08.700' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5450, CAST(N'2024-07-12T04:27:10.507' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5451, CAST(N'2024-07-12T04:27:12.523' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5452, CAST(N'2024-07-12T04:27:14.300' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5453, CAST(N'2024-07-12T04:27:15.707' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5454, CAST(N'2024-07-12T04:27:17.490' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5455, CAST(N'2024-07-12T04:27:20.420' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5456, CAST(N'2024-07-12T04:27:22.217' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5457, CAST(N'2024-07-12T04:27:23.763' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5458, CAST(N'2024-07-12T04:30:29.827' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5459, CAST(N'2024-07-12T04:33:56.790' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5460, CAST(N'2024-07-12T04:34:59.093' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5461, CAST(N'2024-07-12T04:35:44.553' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5462, CAST(N'2024-07-12T04:38:28.213' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5463, CAST(N'2024-07-12T04:39:42.510' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5464, CAST(N'2024-07-12T04:45:19.060' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5465, CAST(N'2024-07-12T04:48:09.273' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5466, CAST(N'2024-07-12T04:50:20.603' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5467, CAST(N'2024-07-12T04:51:56.830' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5468, CAST(N'2024-07-12T04:52:22.323' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5469, CAST(N'2024-07-12T04:52:54.387' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5470, CAST(N'2024-07-12T04:52:57.827' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5471, CAST(N'2024-07-12T04:52:58.490' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5472, CAST(N'2024-07-12T04:52:59.873' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5473, CAST(N'2024-07-12T04:53:01.353' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5474, CAST(N'2024-07-12T04:53:03.843' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5475, CAST(N'2024-07-12T04:53:07.027' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5476, CAST(N'2024-07-12T04:53:08.850' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5477, CAST(N'2024-07-12T04:53:10.970' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5478, CAST(N'2024-07-12T04:53:14.890' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5479, CAST(N'2024-07-12T04:53:21.610' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5480, CAST(N'2024-07-12T04:53:22.680' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5481, CAST(N'2024-07-12T04:53:23.977' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5482, CAST(N'2024-07-12T05:04:45.853' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5483, CAST(N'2024-07-12T05:04:49.677' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5484, CAST(N'2024-07-12T05:05:02.393' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5485, CAST(N'2024-07-12T05:05:05.507' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5486, CAST(N'2024-07-12T05:05:08.070' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5487, CAST(N'2024-07-12T05:13:35.973' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5488, CAST(N'2024-07-12T05:13:40.870' AS DateTime), N'Error', N'StudentManagementSystem.Controllers.TeacherController', N'An error occurred while generating the Excel file.', N'System.ArgumentNullException: Value cannot be null. (Parameter ''view'')
   at System.ArgumentNullException.Throw(String paramName)
   at System.ArgumentNullException.ThrowIfNull(Object argument, String paramName)
   at Microsoft.AspNetCore.Mvc.Rendering.ViewContext..ctor(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, TextWriter writer, HtmlHelperOptions htmlHelperOptions)
   at StudentManagementSystem.Controllers.TeacherController.RenderPartialViewToString(String viewName, Object model) in E:\Internship\Tasks\Task8_SMS_NETCORE\StudentManagementSystem\StudentManagementSystem\Controllers\TeacherController.cs:line 401
   at StudentManagementSystem.Controllers.TeacherController.DownloadExcel() in E:\Internship\Tasks\Task8_SMS_NETCORE\StudentManagementSystem\StudentManagementSystem\Controllers\TeacherController.cs:line 361')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5489, CAST(N'2024-07-12T05:13:44.030' AS DateTime), N'Error', N'StudentManagementSystem.Controllers.TeacherController', N'An error occurred while generating the Excel file.', N'System.ArgumentNullException: Value cannot be null. (Parameter ''view'')
   at System.ArgumentNullException.Throw(String paramName)
   at System.ArgumentNullException.ThrowIfNull(Object argument, String paramName)
   at Microsoft.AspNetCore.Mvc.Rendering.ViewContext..ctor(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, TextWriter writer, HtmlHelperOptions htmlHelperOptions)
   at StudentManagementSystem.Controllers.TeacherController.RenderPartialViewToString(String viewName, Object model) in E:\Internship\Tasks\Task8_SMS_NETCORE\StudentManagementSystem\StudentManagementSystem\Controllers\TeacherController.cs:line 401
   at StudentManagementSystem.Controllers.TeacherController.DownloadExcel() in E:\Internship\Tasks\Task8_SMS_NETCORE\StudentManagementSystem\StudentManagementSystem\Controllers\TeacherController.cs:line 361')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5490, CAST(N'2024-07-12T05:15:01.297' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5491, CAST(N'2024-07-12T05:15:34.927' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5492, CAST(N'2024-07-12T05:15:36.343' AS DateTime), N'Error', N'StudentManagementSystem.Controllers.TeacherController', N'An error occurred while generating the Excel file.', N'System.ArgumentNullException: Value cannot be null. (Parameter ''view'')
   at System.ArgumentNullException.Throw(String paramName)
   at System.ArgumentNullException.ThrowIfNull(Object argument, String paramName)
   at Microsoft.AspNetCore.Mvc.Rendering.ViewContext..ctor(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, TextWriter writer, HtmlHelperOptions htmlHelperOptions)
   at StudentManagementSystem.Controllers.TeacherController.RenderPartialViewToString(String viewName, Object model) in E:\Internship\Tasks\Task8_SMS_NETCORE\StudentManagementSystem\StudentManagementSystem\Controllers\TeacherController.cs:line 401
   at StudentManagementSystem.Controllers.TeacherController.DownloadExcel() in E:\Internship\Tasks\Task8_SMS_NETCORE\StudentManagementSystem\StudentManagementSystem\Controllers\TeacherController.cs:line 361')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5493, CAST(N'2024-07-12T05:16:58.080' AS DateTime), N'Error', N'StudentManagementSystem.Controllers.TeacherController', N'An error occurred while generating the Excel file.', N'System.ArgumentNullException: Value cannot be null. (Parameter ''view'')
   at System.ArgumentNullException.Throw(String paramName)
   at System.ArgumentNullException.ThrowIfNull(Object argument, String paramName)
   at Microsoft.AspNetCore.Mvc.Rendering.ViewContext..ctor(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, TextWriter writer, HtmlHelperOptions htmlHelperOptions)
   at StudentManagementSystem.Controllers.TeacherController.RenderPartialViewToString(String viewName, Object model) in E:\Internship\Tasks\Task8_SMS_NETCORE\StudentManagementSystem\StudentManagementSystem\Controllers\TeacherController.cs:line 401
   at StudentManagementSystem.Controllers.TeacherController.DownloadExcel() in E:\Internship\Tasks\Task8_SMS_NETCORE\StudentManagementSystem\StudentManagementSystem\Controllers\TeacherController.cs:line 361')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5494, CAST(N'2024-07-12T05:20:39.390' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5495, CAST(N'2024-07-12T05:20:42.530' AS DateTime), N'Error', N'StudentManagementSystem.Controllers.TeacherController', N'An error occurred while generating the Excel file.', N'System.ArgumentNullException: Value cannot be null. (Parameter ''view'')
   at System.ArgumentNullException.Throw(String paramName)
   at System.ArgumentNullException.ThrowIfNull(Object argument, String paramName)
   at Microsoft.AspNetCore.Mvc.Rendering.ViewContext..ctor(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, TextWriter writer, HtmlHelperOptions htmlHelperOptions)
   at StudentManagementSystem.Controllers.TeacherController.RenderPartialViewToString(String viewName, Object model) in E:\Internship\Tasks\Task8_SMS_NETCORE\StudentManagementSystem\StudentManagementSystem\Controllers\TeacherController.cs:line 401
   at StudentManagementSystem.Controllers.TeacherController.DownloadExcel() in E:\Internship\Tasks\Task8_SMS_NETCORE\StudentManagementSystem\StudentManagementSystem\Controllers\TeacherController.cs:line 361')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5496, CAST(N'2024-07-12T05:21:34.677' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5497, CAST(N'2024-07-12T05:29:02.087' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5498, CAST(N'2024-07-12T05:33:05.503' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5499, CAST(N'2024-07-12T05:33:44.340' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5500, CAST(N'2024-07-12T05:33:45.193' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5501, CAST(N'2024-07-12T05:33:47.410' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5502, CAST(N'2024-07-12T05:33:48.490' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5503, CAST(N'2024-07-12T05:33:54.457' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5504, CAST(N'2024-07-12T05:34:30.783' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5505, CAST(N'2024-07-12T05:34:31.183' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5506, CAST(N'2024-07-12T05:34:33.780' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5507, CAST(N'2024-07-12T05:34:35.183' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5508, CAST(N'2024-07-12T05:34:36.983' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5509, CAST(N'2024-07-12T05:34:37.510' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5510, CAST(N'2024-07-12T05:34:39.570' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5511, CAST(N'2024-07-12T05:34:41.183' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5512, CAST(N'2024-07-12T05:35:34.943' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5513, CAST(N'2024-07-12T05:36:17.093' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5514, CAST(N'2024-07-12T05:36:54.310' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5515, CAST(N'2024-07-12T05:37:02.893' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5516, CAST(N'2024-07-12T05:37:49.457' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5517, CAST(N'2024-07-12T05:39:00.333' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5518, CAST(N'2024-07-12T05:39:01.423' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5519, CAST(N'2024-07-12T05:39:01.967' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5520, CAST(N'2024-07-12T05:39:02.663' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5521, CAST(N'2024-07-12T05:39:03.647' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5522, CAST(N'2024-07-12T05:39:05.143' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5523, CAST(N'2024-07-12T05:39:05.760' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5524, CAST(N'2024-07-12T05:39:06.973' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5525, CAST(N'2024-07-12T05:39:07.527' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5526, CAST(N'2024-07-12T05:39:08.390' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5527, CAST(N'2024-07-12T05:39:09.073' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5528, CAST(N'2024-07-12T05:39:09.613' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5529, CAST(N'2024-07-12T05:39:10.103' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5530, CAST(N'2024-07-12T05:39:10.927' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5531, CAST(N'2024-07-12T05:39:11.373' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5532, CAST(N'2024-07-12T05:39:11.953' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5533, CAST(N'2024-07-12T05:39:12.470' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5534, CAST(N'2024-07-12T05:39:13.807' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5535, CAST(N'2024-07-12T05:39:15.223' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
GO
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5536, CAST(N'2024-07-12T05:39:41.220' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5537, CAST(N'2024-07-12T05:39:42.853' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5538, CAST(N'2024-07-12T08:01:02.887' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5539, CAST(N'2024-07-12T08:01:10.000' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5540, CAST(N'2024-07-12T08:01:10.597' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5541, CAST(N'2024-07-12T08:01:12.520' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5542, CAST(N'2024-07-12T08:01:23.657' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5543, CAST(N'2024-07-12T08:05:42.000' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5544, CAST(N'2024-07-12T08:05:56.323' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5545, CAST(N'2024-07-12T08:06:01.033' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5546, CAST(N'2024-07-12T08:25:12.910' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5547, CAST(N'2024-07-12T08:25:23.340' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5548, CAST(N'2024-07-12T08:25:38.677' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5549, CAST(N'2024-07-12T08:25:42.943' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5550, CAST(N'2024-07-12T08:26:02.693' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5551, CAST(N'2024-07-12T08:26:05.543' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5552, CAST(N'2024-07-12T08:26:07.560' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5553, CAST(N'2024-07-12T08:26:11.633' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5554, CAST(N'2024-07-12T08:26:12.087' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5555, CAST(N'2024-07-12T08:26:15.337' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5556, CAST(N'2024-07-12T08:26:16.710' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5557, CAST(N'2024-07-12T08:26:26.993' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5558, CAST(N'2024-07-12T08:26:30.127' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5559, CAST(N'2024-07-12T08:26:35.727' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5560, CAST(N'2024-07-12T08:26:42.600' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5561, CAST(N'2024-07-12T08:26:57.447' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5562, CAST(N'2024-07-12T08:27:02.593' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5563, CAST(N'2024-07-12T08:37:08.100' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5564, CAST(N'2024-07-12T08:38:02.953' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5565, CAST(N'2024-07-12T08:38:04.413' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5566, CAST(N'2024-07-12T08:38:04.943' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5567, CAST(N'2024-07-12T08:38:06.257' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5568, CAST(N'2024-07-12T08:38:07.183' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5569, CAST(N'2024-07-12T08:38:36.577' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5570, CAST(N'2024-07-12T08:38:38.523' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5571, CAST(N'2024-07-12T08:38:39.687' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5572, CAST(N'2024-07-12T08:38:41.023' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5573, CAST(N'2024-07-12T08:48:42.603' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5574, CAST(N'2024-07-12T08:48:48.670' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5575, CAST(N'2024-07-12T08:53:11.330' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5576, CAST(N'2024-07-12T08:53:45.257' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5577, CAST(N'2024-07-12T12:20:31.653' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5578, CAST(N'2024-07-12T12:20:31.753' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5579, CAST(N'2024-07-12T12:20:31.753' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5580, CAST(N'2024-07-12T14:01:54.763' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5581, CAST(N'2024-07-15T09:43:30.720' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5582, CAST(N'2024-07-15T09:44:06.747' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5583, CAST(N'2024-07-15T09:44:18.093' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5584, CAST(N'2024-07-16T11:49:14.157' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5585, CAST(N'2024-07-16T12:53:29.670' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5586, CAST(N'2024-07-16T23:07:33.620' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5587, CAST(N'2024-07-16T23:07:33.967' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5588, CAST(N'2024-07-16T23:13:06.870' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5589, CAST(N'2024-07-16T23:13:06.870' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5590, CAST(N'2024-07-16T23:13:07.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5591, CAST(N'2024-07-16T23:13:07.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5592, CAST(N'2024-07-16T23:13:07.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5593, CAST(N'2024-07-16T23:13:07.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5594, CAST(N'2024-07-16T23:13:07.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5595, CAST(N'2024-07-16T23:13:07.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5596, CAST(N'2024-07-16T23:13:07.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5597, CAST(N'2024-07-16T23:13:07.057' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5598, CAST(N'2024-07-16T23:13:07.083' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5599, CAST(N'2024-07-16T23:13:07.083' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5600, CAST(N'2024-07-16T23:13:10.520' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5601, CAST(N'2024-07-16T23:13:10.793' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5602, CAST(N'2024-07-16T23:13:38.227' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully GetAllSubject
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5603, CAST(N'2024-07-16T23:13:38.270' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5604, CAST(N'2024-07-16T23:13:38.270' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5605, CAST(N'2024-07-16T23:13:38.270' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5606, CAST(N'2024-07-16T23:13:38.270' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5607, CAST(N'2024-07-16T23:13:38.270' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.SubjectController', N'Successfully IsSubjectAllocated
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5608, CAST(N'2024-07-16T23:13:40.743' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5609, CAST(N'2024-07-16T23:13:40.777' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5610, CAST(N'2024-07-16T23:13:48.757' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.TeacherController', N'Successfully get all data
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5611, CAST(N'2024-07-16T23:13:50.753' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetLogCountByFilter
', N'')
INSERT [dbo].[LogTable] ([Id], [Date], [Level], [Logger], [Message], [Exception]) VALUES (5612, CAST(N'2024-07-16T23:13:50.797' AS DateTime), N'Info', N'StudentManagementSystem.Controllers.StudentController', N'Successfully GetAllLogs
', N'')
SET IDENTITY_INSERT [dbo].[LogTable] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10012, N'STD1002', N'Jane', N'Elizabeth', N'Doe', N'Jane Doe	', N'jane.doe@example.com', N'Female', CAST(N'2001-01-18' AS Date), N'456 Oak St, Springfield, IL	', N'555-234-5678', 0)
INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10013, N'STD1003', N'Robert', N'James', N'Johnson', N'Robert Johnson	', N'robert.johnson@gmail.com', N'Male', CAST(N'2002-03-20' AS Date), N'789 Pine St, Springfield, IL	', N'555-345-6789', 0)
INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (50018, N'STD1002ds', N'sdsddwde', N'sdfd', N'dfkvjjfdh', N'dsjfhhgew', N'cgsd@gmail.comse', N'Male', CAST(N'2001-01-10' AS Date), N'dsadsd', N'21312', 1)
INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (50024, N'Std10293', N'dfhds', N'bvfdhfb', N'kdsjjh', N'cdbhd', N'dbsh@gmail.com', N'Female', CAST(N'2001-01-16' AS Date), N'dfshuyd', N'2343', 1)
INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (50026, N'sdddd', N'fdgtrh', N'asdgf', N'safsd', N'dfs', N'ds@xfg.hg', N'male', CAST(N'1999-05-04' AS Date), N'asdad', N'2354', 1)
INSERT [dbo].[Student] ([StudentID], [StudentRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (50027, N'safdsg', N'fdgfjgh', N'hjhh', N'dsfrt', N'hnbbn', N'bvvhggj@gmail.df', N'Male', CAST(N'1989-09-21' AS Date), N'dsfdf', N'23243', 1)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Student_Subject_Teacher_Allocation] ON 

INSERT [dbo].[Student_Subject_Teacher_Allocation] ([StudentAllocationID], [StudentID], [SubjectAllocationID]) VALUES (30039, 10012, 10042)
INSERT [dbo].[Student_Subject_Teacher_Allocation] ([StudentAllocationID], [StudentID], [SubjectAllocationID]) VALUES (30041, 10013, 10046)
INSERT [dbo].[Student_Subject_Teacher_Allocation] ([StudentAllocationID], [StudentID], [SubjectAllocationID]) VALUES (40042, 10013, 20041)
INSERT [dbo].[Student_Subject_Teacher_Allocation] ([StudentAllocationID], [StudentID], [SubjectAllocationID]) VALUES (40039, 10013, 20043)
INSERT [dbo].[Student_Subject_Teacher_Allocation] ([StudentAllocationID], [StudentID], [SubjectAllocationID]) VALUES (40041, 50018, 10047)
INSERT [dbo].[Student_Subject_Teacher_Allocation] ([StudentAllocationID], [StudentID], [SubjectAllocationID]) VALUES (40040, 50018, 10051)
SET IDENTITY_INSERT [dbo].[Student_Subject_Teacher_Allocation] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (36, N'MATH101', N'Calculus ', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (37, N'ENG102', N'English Literature', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (38, N'CS103', N'Introduction to Programming', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (40, N'CHEM105', N'Organic Chemistry', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (41, N'PHYS106', N'Physics ', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (42, N'HIST107', N'Historyx', 0)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (43, N'ECON109', N'Microeconomics', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (44, N'SOC110', N'Sociology', 0)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (20034, N'S3283', N'dnsbfjh', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (30034, N'shdfyu', N'duhe', 0)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (30035, N'edwe', N'we', 0)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (30036, N'dede', N'asds', 0)
INSERT [dbo].[Subject] ([SubjectID], [SubjectCode], [Name], [IsEnable]) VALUES (30039, N'sfds', N'dscd', 0)
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10037, N'TR2001', N'Alice', N'Margaret', N'Johnson', N'Alice Johnson	', N'alice.johnson@gmail.com', N'Female', CAST(N'1990-01-09' AS Date), N'100 Park Ave, Springfield, IL	', N'555-234-5678', 1)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10038, N'TR2002', N'Brian', N'Charles', N'Smith', N'Brian Smith	', N'brian.smith@gmail.com', N'Male', CAST(N'1989-06-16' AS Date), N'101 Park Ave, Springfield, IL	', N'555-345-6789', 1)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10040, N'TR2004', N'David', N'Edward', N'Wilson', N'David Wilson	', N'david.wilson@gmail.com', N'Male', CAST(N'1986-02-12' AS Date), N'103 Park Ave, Springfield, IL	', N'555-567-8901', 1)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10041, N'TR2005', N'Emma', N'Louise', N'Taylor', N'Emma Taylor	', N'emma.taylor@gmail.com', N'Female', CAST(N'1988-03-17' AS Date), N'104 Park Ave, Springfield, IL	', N'555-678-9012', 1)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10043, N'TR2007', N'Grace', N'Marie', N'Thomas', N'Grace Thomas	', N'grace.thomas@gmail.com', N'Female', CAST(N'1991-08-13' AS Date), N'106 Park Ave, Springfield, IL	', N'555-890-1234', 1)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (10044, N'TR2008', N'Henry', N'Samuel', N'Jackson', N'Henry Jackson	', N'henry.jackson@gmail.com', N'Male', CAST(N'1995-03-03' AS Date), N'107 Park Ave, Springfield, IL	', N'555-901-2345', 1)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (20036, N'dfhdg', N'xchxv', N'dhfsd', N'djhj', N'nhjcv', N'bhcg@gsj.csjio', N'Male', CAST(N'2001-01-10' AS Date), N'asdsf', N'21432', 0)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (20037, N'xjvg', N'sfudi', N'djfd', N'sdjfsudh', N'dskjfj', N'dshf@gdf.ckidfj', N'Female', CAST(N'2001-01-09' AS Date), N'ajkdh', N'2423', 0)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (20039, N'fkdmk', N'vfdm', N'kfdvl', N'kdfmbk', N'mdbk', N'fk@gmailcom', N'Female', CAST(N'2001-01-09' AS Date), N'ajkdh', N'23344', 0)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (20040, N'zxc', N'df', N'sd', N'dsfg', N'sdfg', N'alice.johnson@gmail.comsda', N'Male', CAST(N'2001-01-02' AS Date), N'dsfd', N'321', 0)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (20041, N'ssds', N'feergr', N'fgff', N'ggfgf', N'fgfdf', N'fsf@gdf.hjy', N'male', CAST(N'1999-10-11' AS Date), N'dsf', N'21323', 0)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherRegNo], [FirstName], [MiddleName], [LastName], [DisplayName], [Email], [Gender], [DOB], [Address], [ContactNo], [IsEnable]) VALUES (20042, N'tea1010101', N'zxcdx', N'vfdf', N'dffdf', N'dcdsfd', N'dfsdfd@gh.com', N'Male', CAST(N'1999-10-12' AS Date), N'zxczdfs', N'213112', 0)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher_Subject_Allocation] ON 

INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10042, 10037, 37)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10043, 10037, 41)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10050, 10037, 43)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (20041, 10038, 37)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10045, 10038, 41)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10051, 10040, 37)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10046, 10040, 40)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (20043, 10040, 20034)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (20044, 10041, 36)
INSERT [dbo].[Teacher_Subject_Allocation] ([SubjectAllocationID], [TeacherID], [SubjectID]) VALUES (10047, 10041, 38)
SET IDENTITY_INSERT [dbo].[Teacher_Subject_Allocation] OFF
GO
/****** Object:  Index [UQ__Student___58646DF939E2A1D8]    Script Date: 7/19/2024 11:32:43 AM ******/
ALTER TABLE [dbo].[Student_Subject_Teacher_Allocation] ADD UNIQUE NONCLUSTERED 
(
	[StudentID] ASC,
	[SubjectAllocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Teacher___7733E37D94F17654]    Script Date: 7/19/2024 11:32:43 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetOneStudentDetails]    Script Date: 7/19/2024 11:32:43 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetOneTeacherDetails]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author Name>
-- Create date: <Create Date>
-- Description: Retrieves details of a single teacher
-- =============================================

CREATE PROCEDURE [dbo].[GetOneTeacherDetails]
    @TeacherID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM Teacher
    WHERE TeacherID = @TeacherID;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AddStudentAllocation]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddStudentAllocation]
    @StudentAllocationID BIGINT = NULL,
    @StudentID NVARCHAR(10),
    @SubjectAllocationID NVARCHAR(20),
    @Result BIT OUTPUT,
    @ResultMsg VARCHAR(50) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

	--Reg no validation
    DECLARE @IsStudentAllocationAvailable BIT;

	SET @IsStudentAllocationAvailable = dbo.FN_CheckStudentAllocationExsist(@StudentID,@SubjectAllocationID);

    IF @IsStudentAllocationAvailable = 1
	BEGIN
		SET @ResultMsg = 'Student Allocation already exists';
		SET @Result = 0;
        RETURN;
    END


    IF @StudentAllocationID is null
    BEGIN
		
        -- Insert new student allocation
        INSERT INTO Student_Subject_Teacher_Allocation(StudentID,SubjectAllocationID)
        VALUES (@StudentID, @SubjectAllocationID);

        SET @ResultMsg = 'Student Allocation Successfully Added';
        SET @Result = 1;
    END
    ELSE
    BEGIN
		
        -- Update existing student
        UPDATE Student_Subject_Teacher_Allocation
        SET StudentID = @StudentID,
            SubjectAllocationID=@SubjectAllocationID
        WHERE StudentAllocationID = @StudentAllocationID;

        SET @ResultMsg = 'Student Allocation Successfully Updated';
        SET @Result = 1;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteStudent]    Script Date: 7/19/2024 11:32:43 AM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_DeleteStudentAllocation]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[sp_DeleteStudentAllocation]
    @StudentAllocationID BIGINT,
    @Result BIT OUTPUT,
    @ResultMsg varchar(50) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN
        -- Student is not allocated
        DELETE FROM Student_Subject_Teacher_Allocation WHERE StudentAllocationID = @StudentAllocationID;

        -- Output success
        SET @Result = 1;
        SET @ResultMsg = 'Student Allocation successfully deleted';
    END
    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteSubject]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_DeleteSubject]
    @SubjectID BIGINT,
    @Result BIT OUTPUT,
    @ResultMsg varchar(50) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @IsAllocated BIT;
    SET @IsAllocated = dbo.FN_CheckSubjectAllocated(@SubjectID);

    -- Delete the student based on Allocation
    IF @IsAllocated = 0
    BEGIN
        -- Student is not allocated
        DELETE FROM Subject WHERE SubjectID = @SubjectID;

        -- Output success
        SET @Result = 1;
        SET @ResultMsg = 'Subject successfully deleted';
    END
    ELSE
    BEGIN
        -- Output failure
        SET @Result = 0;
        SET @ResultMsg = 'Subject is allocated to subject';
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteSubjectAllocation]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteSubjectAllocation]
    @SubjectAllocationID BIGINT,
    @Result BIT OUTPUT,
    @ResultMsg varchar(50) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @IsAllocated BIT;
    SET @IsAllocated = dbo.FN_IsSubjectAllocationInUse(@SubjectAllocationID);

    -- Delete the student based on Allocation
    IF @IsAllocated = 0
    BEGIN
        -- Student is not allocated
        DELETE FROM Teacher_Subject_Allocation WHERE SubjectAllocationID = @SubjectAllocationID;

        -- Output success
        SET @Result = 1;
        SET @ResultMsg = 'Subject Allocation successfully deleted';
    END
    ELSE
    BEGIN
        -- Output failure
        SET @Result = 0;
        SET @ResultMsg = 'Subject allocation is followed by to students';
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteTeacher]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	Delete a teacher if not allocated to any subject
-- =============================================
CREATE PROCEDURE [dbo].[sp_DeleteTeacher]
    @TeacherID BIGINT,
    @IsDeleted BIT OUTPUT,
    @ErrorMessage NVARCHAR(255) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @IsAllocated BIT;
    
    -- Call the validation function
    SET @IsAllocated = dbo.fn_CheckTeacherAllocation(@TeacherID);
    
    -- Check for validation errors
    IF @IsAllocated = 1
    BEGIN
        SET @IsDeleted = 0;
        SET @ErrorMessage = 'This teacher is allocated for a subject';
        RETURN;
    END
    ELSE
    -- Proceed with deletion if no validation errors
    BEGIN
        DELETE FROM Teacher WHERE TeacherID = @TeacherID;

        SET @IsDeleted = 1;
        SET @ErrorMessage = 'Teacher deleted successfully';
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllAllocatedSubject]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllAllocatedSubject]
AS
BEGIN
    SET NOCOUNT ON;

	BEGIN
		SELECT 
			Distinct s.SubjectID,
			s.Name,
			s.SubjectCode,
			s.IsEnable
		FROM 
			Teacher_Subject_Allocation as ts inner join
			Subject as s on s.SubjectID=ts.SubjectID
	END
 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllStudentAllocation]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetAllStudentAllocation]
@isActive BIT = NULL 
AS
BEGIN
    SET NOCOUNT ON;

    -- Temporary table to hold intermediate results
    CREATE TABLE #StudentSubjectAllocations (
        StudentAllocationID BIGINT,
        StudentID BIGINT,
        StudentName VARCHAR(50),
        StudentRegNo VARCHAR(20),
        SubjectAllocationID BIGINT,
        SubjectID BIGINT,
        SubjectCode VARCHAR(20),
        SubjectName VARCHAR(50),
        TeacherID BIGINT,
        TeacherRegNo VARCHAR(50),
        TeacherName VARCHAR(50),
        IsStudentEnable BIT
    );

    -- Insert data temporary table
    INSERT INTO #StudentSubjectAllocations (
        StudentAllocationID,
        StudentID,
        StudentName,
        StudentRegNo,
        SubjectAllocationID,
        SubjectID,
        SubjectCode,
        SubjectName,
        TeacherID,
        TeacherRegNo,
        TeacherName,
        IsStudentEnable
    )
    SELECT
        sta.StudentAllocationID,
        s.StudentID,
        s.DisplayName AS StudentName,
        s.StudentRegNo,
        sua.SubjectAllocationID,
        subj.SubjectID,
        subj.SubjectCode,
        subj.Name AS SubjectName,
        t.TeacherID,
        t.TeacherRegNo,
        t.DisplayName AS TeacherName,
        s.IsEnable AS IsStudentEnable
    FROM
        Student_Subject_Teacher_Allocation AS sta
        INNER JOIN Student AS s ON sta.StudentID = s.StudentID
        INNER JOIN Teacher_Subject_Allocation AS sua ON sta.SubjectAllocationID = sua.SubjectAllocationID
        INNER JOIN Teacher AS t ON sua.TeacherID = t.TeacherID
        INNER JOIN Subject AS subj ON sua.SubjectID = subj.SubjectID;

    
    SELECT
        StudentID,
        StudentName,
        StudentRegNo,
        IsStudentEnable,
        (
            SELECT
                SubjectCode,
                SubjectName,
                SubjectID,
                (
                    SELECT
                        TeacherRegNo,
                        TeacherName,
						StudentAllocationID
                    FROM #StudentSubjectAllocations AS sub
                    WHERE sub.StudentID = main.StudentID
                        AND sub.SubjectID = ssa.SubjectID 
                    FOR JSON PATH
                ) AS SubjectAllocation
            FROM #StudentSubjectAllocations AS ssa
            WHERE ssa.StudentID = main.StudentID
            GROUP BY SubjectCode, SubjectName, SubjectID 
            FOR JSON PATH
        ) AS StudentAllocations
    FROM (
        SELECT DISTINCT
            StudentID,
            StudentName,
            StudentRegNo,
            IsStudentEnable
        FROM #StudentSubjectAllocations
    ) AS main
	WHERE(@isActive is null OR main.IsStudentEnable=@isActive);


    -- Clean up temporary table
    DROP TABLE #StudentSubjectAllocations;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllStudentDetails]    Script Date: 7/19/2024 11:32:43 AM ******/
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
    @PageNumber INT,
    @PageSize INT,
    @IsActive BIT = NULL,
    @TotalPages INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;
    
	IF @PageSize = 0
		Begin
		SELECT *
		From Student 
		WHERE (@IsActive IS NULL OR IsEnable = @IsActive)
		ORDER BY StudentRegNo ASC;
		End
	ELSE
	BEGIN
		SELECT *
		FROM Student
		WHERE (@IsActive IS NULL OR IsEnable = @IsActive)
		ORDER BY StudentRegNo ASC
		OFFSET @Offset ROWS
		FETCH NEXT @PageSize ROWS ONLY;
	END
    -- Calculate total pages
    DECLARE @TotalRecords INT;
    SELECT @TotalRecords = COUNT(*)
    FROM Student
    WHERE (@IsActive IS NULL OR IsEnable = @IsActive);

	IF @PageSize =0
		SET @TotalPages=1;
	ELSE
		SET @TotalPages = CEILING(CAST(@TotalRecords AS FLOAT) / @PageSize);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllSubject]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllSubject]
    @PageNumber INT,
    @PageSize INT,
    @IsActive BIT = NULL,
    @TotalPages INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;
    
	IF @PageSize is null
		Begin
		SELECT *
		From Subject 
		WHERE (@IsActive IS NULL OR IsEnable = @IsActive)
		ORDER BY SubjectCode ASC;
		End
	ELSE
	BEGIN
		SELECT *
		FROM Subject
		WHERE (@IsActive IS NULL OR IsEnable = @IsActive)
		ORDER BY SubjectCode ASC
		OFFSET @Offset ROWS
		FETCH NEXT @PageSize ROWS ONLY;
	END
    -- Calculate total pages
    DECLARE @TotalRecords INT;
    SELECT @TotalRecords = COUNT(*)
    FROM Subject
    WHERE (@IsActive IS NULL OR IsEnable = @IsActive);

	IF @PageSize is null
		SET @TotalPages=1;
	ELSE
		SET @TotalPages = CEILING(CAST(@TotalRecords AS FLOAT) / @PageSize);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllSubjectAllocation]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetAllSubjectAllocation]
AS
BEGIN
    SET NOCOUNT ON;

    -- Temporary table to hold intermediate results
    CREATE TABLE #SubjectAllocations (
        SubjectID BIGINT,
        TeacherID VARCHAR(20),
        SubjectAllocationID BIGINT,
        SubjectCode VARCHAR(20),
        SubjectName VARCHAR(50),
        TeacherRegNo VARCHAR(50),
        TeacherName VARCHAR(50)
    );

    -- Insert sample data or actual data into the temporary table
    INSERT INTO #SubjectAllocations (SubjectID, TeacherID, SubjectAllocationID, SubjectCode, SubjectName, TeacherRegNo, TeacherName)
    SELECT
        s.SubjectID,
        t.TeacherID,
        sua.SubjectAllocationID,
        s.SubjectCode,
        s.Name AS SubjectName,
        t.TeacherRegNo,
        t.DisplayName AS TeacherName
    FROM
        Teacher_Subject_Allocation AS sua
        INNER JOIN Teacher AS t ON sua.TeacherID = t.TeacherID
        INNER JOIN Subject AS s ON sua.SubjectID = s.SubjectID;

    -- Query to retrieve subject allocations grouped by SubjectCode and SubjectName
    SELECT
        SubjectID,
        SubjectCode,
        SubjectName,
        JSON_QUERY(
            (
                SELECT
                    t.TeacherRegNo AS TeacherRegNo,
                    t.TeacherID AS TeacherID,
                    t.TeacherName AS TeacherName,
                    t.SubjectAllocationID AS SubjectAllocationID
                FROM
                    #SubjectAllocations t
                WHERE
                    t.SubjectID = s.SubjectID
                FOR JSON PATH
            )
        ) AS SubjectAllocations
    FROM
        #SubjectAllocations s
    GROUP BY
        SubjectID,
        SubjectCode,
        SubjectName;

    -- Clean up temporary table
    DROP TABLE #SubjectAllocations;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllTeacherDetails]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author Name>
-- Create date: <Create Date>
-- Description: Retrieves paginated teacher details
-- =============================================

CREATE PROCEDURE [dbo].[sp_GetAllTeacherDetails]
    @PageNo INT,
    @PageSize INT,
    @IsActive BIT = NULL,
    @TotalPage INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Offset INT = (@PageNo - 1) * @PageSize;
    
	IF @PageSize =0
		Begin
		SELECT *
		From Teacher 
		WHERE (@IsActive IS NULL OR IsEnable = @IsActive)
		ORDER BY TeacherRegNo ASC;
		End
	ELSE
	Begin
		SELECT *
		FROM Teacher
		WHERE (@IsActive IS NULL OR IsEnable = @IsActive)
		ORDER BY TeacherID
		OFFSET @Offset ROWS
		FETCH NEXT @PageSize ROWS ONLY;
	End
    -- Calculate total pages
    DECLARE @TotalRecords INT;
    SELECT @TotalRecords = COUNT(*)
    FROM Teacher
    WHERE (@IsActive IS NULL OR IsEnable = @IsActive);
	IF @PageSize=0
		SET @TotalPage=1;
	ELSE
	    SET @TotalPage = CEILING(CAST(@TotalRecords AS FLOAT) / @PageSize);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllTeachersForSubject]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllTeachersForSubject]
	@SubjectID BIGINT
AS
BEGIN
    SET NOCOUNT ON;

	BEGIN
		select 
			distinct ts.SubjectAllocationID as TeacherID,
			t.Address,
			t.ContactNo,
			t.DisplayName,
			t.DOB,
			t.Email,
			t.FirstName,
			t.Gender,
			t.IsEnable,
			t.LastName,
			t.MiddleName,
			t.TeacherRegNo
		from 
			Teacher_Subject_Allocation as ts inner join
			Teacher as t on ts.TeacherID=t.TeacherID
		where ts.SubjectID=@SubjectID
	END
 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDailyLogCounts]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	Get daily log counts by level
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetDailyLogCounts]
    @StartDate DATETIME = NULL,
@EndDate DATETIME = NULL
AS
BEGIN
    SELECT 
		FORMAT(Date, 'dd-MM-yyyy') AS Day,
        SUM(CASE WHEN Level = 'info' THEN 1 ELSE 0 END) AS Info,
        SUM(CASE WHEN Level = 'warn' THEN 1 ELSE 0 END) AS Warning,
        SUM(CASE WHEN Level = 'error' THEN 1 ELSE 0 END) AS Error
    FROM LogTable
	WHERE 
		(@StartDate IS NULL OR Date >= @StartDate)
		AND (@EndDate IS NULL OR Date <= @EndDate)
    GROUP BY FORMAT(Date, 'dd-MM-yyyy');
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLogCountsByMonth]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetLogCountsByMonth]
AS
BEGIN
    SELECT 
        FORMAT(Date, 'yyyy-MM') AS Month,
        SUM(CASE WHEN Level = 'info' THEN 1 ELSE 0 END) AS Info,
        SUM(CASE WHEN Level = 'warn' THEN 1 ELSE 0 END) AS Warning,
        SUM(CASE WHEN Level = 'error' THEN 1 ELSE 0 END) AS Error
    FROM LogTable
    GROUP BY  FORMAT(Date, 'yyyy-MM');
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLogLevelCounts]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetLogLevelCounts]
@InfoCount INT OUTPUT,
@WarnCount INT OUTPUT,
@ErrorCount INT OUTPUT
AS
BEGIN
    SELECT 
        @InfoCount = SUM(CASE WHEN Level = 'info' THEN 1 ELSE 0 END),
        @WarnCount = SUM(CASE WHEN Level = 'warn' THEN 1 ELSE 0 END),
        @ErrorCount = SUM(CASE WHEN Level = 'error' THEN 1 ELSE 0 END)
    FROM LogTable;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLogsByDateRange]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetLogsByDateRange]
    @StartDate DATETIME,
    @EndDate DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    SELECT * 
    FROM LogTable
    WHERE Date >= @StartDate AND Date < DATEADD(DAY, 1, @EndDate);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLogsCountsbyFilter]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetLogsCountsbyFilter]
    @Level VARCHAR(20) = NULL,
    @StartDate DATETIME = NULL,
    @EndDate DATETIME = NULL,
	@InfoCount INT OUTPUT,
	@WarnCount INT OUTPUT,
	@ErrorCount INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    
    IF @Level = '' SET @Level = NULL;

    SELECT 
		@InfoCount = SUM(CASE WHEN Level = 'info' THEN 1 ELSE 0 END),
		@WarnCount = SUM(CASE WHEN Level = 'warn' THEN 1 ELSE 0 END),
		@ErrorCount = SUM(CASE WHEN Level = 'error' THEN 1 ELSE 0 END)
	FROM LogTable 
	WHERE 
		(@Level IS NULL OR Level = @Level) 
		AND (@StartDate IS NULL OR Date >= @StartDate)
		AND (@EndDate IS NULL OR Date <= @EndDate);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNLogData]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetNLogData]
    @LogType VARCHAR(20) = NULL,
    @StartDate DATETIME = NULL,
    @EndDate DATETIME = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Treat empty strings as NULL
    IF @LogType = '' SET @LogType = NULL;
    
    
   
    SELECT * 
    FROM LogTable 
    WHERE (@LogType IS NULL OR Level = @LogType) 
      AND (@StartDate IS NULL OR Date >= @StartDate)
      AND (@EndDate IS NULL OR Date <= @EndDate)
    ORDER BY [id] DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNLogDataByLevel]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetNLogDataByLevel]
    @Level NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, Date, Level, Logger, Message, Exception
    FROM LogTable
    WHERE Level = @Level
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSubjectAllocation]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetSubjectAllocation]
    @SubjectAllocationID INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT *
    FROM Teacher_Subject_Allocation
    WHERE SubjectAllocationID = @SubjectAllocationID;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSubjectAllocationsGroupedByTeacher]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetSubjectAllocationsGroupedByTeacher]
AS
BEGIN
    SELECT 
        t.TeacherRegNo,
        t.DisplayName AS TeacherName,
        sa.SubjectAllocationID,
        s.SubjectCode,
        s.Name AS SubjectName
    FROM 
        Teacher_Subject_Allocation sa
    INNER JOIN 
        Subject s ON sa.SubjectID = s.SubjectID
    INNER JOIN 
        Teacher t ON sa.TeacherID = t.TeacherID
    ORDER BY 
        t.DisplayName, t.TeacherRegNo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSubjectDetails]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetSubjectDetails]
    @SubjectID INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT *
    FROM Subject
    WHERE SubjectID = @SubjectID;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveStudent]    Script Date: 7/19/2024 11:32:43 AM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SaveTeacher]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_SaveTeacher]
    @TeacherID BIGINT NULL,
    @TeacherRegNo NVARCHAR(10),
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

    -- Check if the teacher registration number already exists
    IF dbo.fn_CheckTeacherRegNo(@TeacherID, @TeacherRegNo) = 1
    BEGIN
        SET @ErrorMessage = 'Teacher registration number already exists.';
        RETURN;
    END

    -- Check if the teacher display name already exists
    IF dbo.fn_CheckTeacherName(@TeacherID, @DisplayName) = 1
    BEGIN
        SET @ErrorMessage = 'Teacher display name already exists.';
        RETURN;
    END

    -- Check if the teacher email already exists
    IF dbo.fn_CheckTeacherEmail(@TeacherID, @Email) = 1
    BEGIN
        SET @ErrorMessage = 'Teacher email address already exists.';
        RETURN;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Check if the teacher already exists (for update)
        IF EXISTS (SELECT 1 FROM Teacher WHERE TeacherID = @TeacherID)
        BEGIN
            -- Update existing teacher
            UPDATE Teacher
            SET TeacherRegNo = @TeacherRegNo,
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
            WHERE TeacherID = @TeacherID;

            SET @ErrorMessage = 'Teacher updated successfully.';
        END
        ELSE
        BEGIN
            -- Insert new teacher
            INSERT INTO Teacher (TeacherRegNo, FirstName, MiddleName, LastName, DisplayName, Email, Gender, DOB, Address, ContactNo, IsEnable)
            VALUES (@TeacherRegNo, @FirstName, @MiddleName, @LastName, @DisplayName, @Email, @Gender, @DOB, @Address, @ContactNo, @IsEnable);

            SET @ErrorMessage = 'Teacher added successfully.';
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
/****** Object:  StoredProcedure [dbo].[sp_SearchStudentAllocation]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SearchStudentAllocation]
	@term VARCHAR(100) = NULL,
    @category VARCHAR(50) = NULL
   
AS
BEGIN
    SET NOCOUNT ON;

    -- Temporary table to hold intermediate results
    CREATE TABLE #StudentSubjectAllocations (
        StudentAllocationID BIGINT,
        StudentID BIGINT,
        StudentName VARCHAR(50),
        StudentRegNo VARCHAR(20),
        SubjectAllocationID BIGINT,
        SubjectID BIGINT,
        SubjectCode VARCHAR(20),
        SubjectName VARCHAR(50),
        TeacherID BIGINT,
        TeacherRegNo VARCHAR(50),
        TeacherName VARCHAR(50),
        IsStudentEnable BIT
    );

    -- Insert data into temporary table
    INSERT INTO #StudentSubjectAllocations (
        StudentAllocationID,
        StudentID,
        StudentName,
        StudentRegNo,
        SubjectAllocationID,
        SubjectID,
        SubjectCode,
        SubjectName,
        TeacherID,
        TeacherRegNo,
        TeacherName,
        IsStudentEnable
    )
    SELECT
        sta.StudentAllocationID,
        s.StudentID,
        s.DisplayName AS StudentName,
        s.StudentRegNo,
        sua.SubjectAllocationID,
        subj.SubjectID,
        subj.SubjectCode,
        subj.Name AS SubjectName,
        t.TeacherID,
        t.TeacherRegNo,
        t.DisplayName AS TeacherName,
        s.IsEnable AS IsStudentEnable
    FROM
        Student_Subject_Teacher_Allocation AS sta
        INNER JOIN Student AS s ON sta.StudentID = s.StudentID
        INNER JOIN Teacher_Subject_Allocation AS sua ON sta.SubjectAllocationID = sua.SubjectAllocationID
        INNER JOIN Teacher AS t ON sua.TeacherID = t.TeacherID
        INNER JOIN Subject AS subj ON sua.SubjectID = subj.SubjectID;

    
    SELECT
        main.StudentID,
        main.StudentName,
        main.StudentRegNo,
        main.IsStudentEnable,
        (
            SELECT
                SubjectCode,
                SubjectName,
                SubjectID,
                (
                    SELECT
                        TeacherRegNo,
                        TeacherName,
                        StudentAllocationID
                    FROM #StudentSubjectAllocations AS sub
                    WHERE sub.StudentID = main.StudentID
                        AND sub.SubjectID = ssa.SubjectID 
                    FOR JSON PATH
                ) AS SubjectAllocation
            FROM #StudentSubjectAllocations AS ssa
            WHERE ssa.StudentID = main.StudentID
                AND (
                    @term IS NULL 
                    OR (
                        @category = 'StudentName' AND main.StudentName LIKE '%' + @term + '%'
                        OR @category = 'SubjectName' AND ssa.SubjectName LIKE '%' + @term + '%'
                        OR @category = 'TeacherName' AND ssa.TeacherName LIKE '%' + @term + '%'
                    )
                )
            GROUP BY SubjectCode, SubjectName, SubjectID 
            FOR JSON PATH
        ) AS StudentAllocations
    FROM (
        SELECT DISTINCT
            s.StudentID,
            s.DisplayName AS StudentName,
            s.StudentRegNo,
            s.IsEnable AS IsStudentEnable
        FROM #StudentSubjectAllocations AS ssa
        INNER JOIN Student AS s ON ssa.StudentID = s.StudentID
        WHERE (
                @term IS NULL 
                OR (
                    @category = 'StudentName' AND s.DisplayName LIKE '%' + @term + '%'
                    OR @category = 'SubjectName' AND ssa.SubjectName LIKE '%' + @term + '%'
                    OR @category = 'TeacherName' AND ssa.TeacherName LIKE '%' + @term + '%'
                )
            )
    ) AS main

    -- Clean up temporary table
    DROP TABLE #StudentSubjectAllocations;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchStudentsDetails]    Script Date: 7/19/2024 11:32:43 AM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SearchSubject]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	Searche for Subject based on a specified category and search term.
-- =============================================
CREATE PROCEDURE [dbo].[sp_SearchSubject]
    @SearchCategory NVARCHAR(50),
    @SearchQuery NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SQL NVARCHAR(MAX);

    -- Construct the base SQL query
    SET @SQL = N'SELECT * FROM Subject WHERE ';

    ---- Determine the condition based on the category
    IF @SearchCategory = 'SubjectCode'
    BEGIN
        SET @SQL = @SQL + N'UPPER(SubjectCode) LIKE @SearchTerm';
    END
    ELSE IF @SearchCategory = 'Name'
    BEGIN
        SET @SQL = @SQL + N'UPPER(Name) LIKE @SearchTerm';
    END
    ELSE
    BEGIN
        SET @SQL = @SQL + N'UPPER(SubjectCode) LIKE @SearchTerm OR UPPER(Name) LIKE @SearchTerm';
    END

    SET @SearchQuery = '%' + @SearchQuery + '%';

    EXEC sp_executesql @SQL, N'@SearchTerm NVARCHAR(255)', @SearchTerm = @SearchQuery;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchSubjectAllocations]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SearchSubjectAllocations]
    @SearchCriteria NVARCHAR(50),
    @SearchQuery NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    -- Temporary table to hold intermediate results
    CREATE TABLE #SubjectAllocations (
        SubjectID BIGINT,
        TeacherID VARCHAR(20),
        SubjectAllocationID BIGINT,
        SubjectCode VARCHAR(20),
        SubjectName VARCHAR(50),
        TeacherRegNo VARCHAR(50),
        TeacherName VARCHAR(50)
    );

    -- Insert data into the temporary table based on search criteria and query
    INSERT INTO #SubjectAllocations (SubjectID, TeacherID, SubjectAllocationID, SubjectCode, SubjectName, TeacherRegNo, TeacherName)
    SELECT
        s.SubjectID,
        t.TeacherID,
        sua.SubjectAllocationID,
        s.SubjectCode,
        s.Name AS SubjectName,
        t.TeacherRegNo,
        t.DisplayName AS TeacherName
    FROM
        Teacher_Subject_Allocation AS sua
        INNER JOIN Teacher AS t ON sua.TeacherID = t.TeacherID
        INNER JOIN Subject AS s ON sua.SubjectID = s.SubjectID
    WHERE
        (@SearchCriteria = 'Teacher-name1' AND t.DisplayName LIKE '%' + @SearchQuery + '%')
        OR (@SearchCriteria = 'Subject-name1' AND s.Name LIKE '%' + @SearchQuery + '%')
        OR (@SearchCriteria = '' AND @SearchQuery = '');

    -- Query to retrieve subject allocations grouped by SubjectCode and SubjectName
    SELECT
        SubjectID,
        SubjectCode,
        SubjectName,
        JSON_QUERY(
            (
                SELECT
                    TeacherRegNo AS TeacherRegNo,
                    TeacherID AS TeacherID,
                    TeacherName AS TeacherName,
                    SubjectAllocationID AS SubjectAllocationID
                FROM
                    #SubjectAllocations t
                WHERE
                    t.SubjectID = s.SubjectID
                FOR JSON PATH
            )
        ) AS SubjectAllocations
    FROM
        #SubjectAllocations s
    WHERE
        EXISTS (
            SELECT 1 FROM #SubjectAllocations sa
            WHERE sa.SubjectID = s.SubjectID
        )
    GROUP BY
        SubjectID,
        SubjectCode,
        SubjectName;

    -- Clean up temporary table
    DROP TABLE #SubjectAllocations;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchTeachersDetails]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author,,Name>
-- Create date: <Create Date,,>
-- Description: Searches for teachers based on a specified category and search term.
-- =============================================
CREATE PROCEDURE [dbo].[sp_SearchTeachersDetails]
    @Category NVARCHAR(50),
    @Term NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SQL NVARCHAR(MAX);

    -- Construct the base SQL query
    SET @SQL = N'SELECT * FROM Teacher WHERE ';

    -- Determine the condition based on the category
    IF @Category = 'TeacherRegNo'
    BEGIN
        SET @SQL = @SQL + N'UPPER(TeacherRegNo) LIKE @SearchTerm';
    END
    ELSE IF @Category = 'DisplayName'
    BEGIN
        SET @SQL = @SQL + N'UPPER(DisplayName) LIKE @SearchTerm';
    END
    ELSE
    BEGIN
        SET @SQL = @SQL + N'UPPER(TeacherRegNo) LIKE @SearchTerm OR UPPER(DisplayName) LIKE @SearchTerm';
    END

    SET @Term = '%' + @Term + '%';

    EXEC sp_executesql @SQL, N'@SearchTerm NVARCHAR(255)', @SearchTerm = @Term;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ToggleEnableStudent]    Script Date: 7/19/2024 11:32:43 AM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ToggleEnableSubject]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ToggleEnableSubject]
    @SubjectId BIGINT,
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
        -- Check if the subject exists
        IF EXISTS (SELECT 1 FROM Subject WHERE SubjectID = @SubjectId)
        BEGIN
            -- Check if subject is allocated to any subject
            IF @IsEnable = 0
            BEGIN
                IF EXISTS (SELECT 1 FROM Teacher_Subject_Allocation WHERE SubjectID = @SubjectId)
                BEGIN
                    SET @ErrorMessage = 'Cannot disable subject because it allocated to a teacher.';
                    RETURN;
                END
            END
            
            -- Update the IsEnable status of the subject
            UPDATE Subject
            SET IsEnable = @IsEnable
            WHERE SubjectID = @SubjectId;

            DECLARE @DisplayName NVARCHAR(50);
            SELECT @DisplayName = Name FROM Subject WHERE SubjectID = @SubjectId;

            -- Set the success message and success flag
            IF @IsEnable = 1
                SET @ErrorMessage = 'Subject ' + @DisplayName + ' successfully enabled!';
            ELSE
                SET @ErrorMessage = 'Subject ' + @DisplayName + ' successfully disabled!';
                
            SET @Success = 1;
        END
        ELSE
        BEGIN
            SET @ErrorMessage = 'Subject not found!';
        END
    END TRY
    BEGIN CATCH
        SET @ErrorMessage = ERROR_MESSAGE();
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ToggleEnableTeacher]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ToggleEnableTeacher]
    @TeacherID BIGINT,
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
        -- Check if the teacher exists
        IF EXISTS (SELECT 1 FROM Teacher WHERE TeacherID = @TeacherID)
        BEGIN
            -- Check if teacher is allocated to any subject
            IF @IsEnable = 0 -- Only check allocation if disabling
            BEGIN
                IF EXISTS (SELECT 1 FROM Teacher_Subject_Allocation WHERE TeacherID = @TeacherID)
                BEGIN
                    SET @ErrorMessage = 'Cannot disable teacher because they are allocated to a subject.';
                    RETURN;
                END
            END
            
            -- Update the IsEnable status of the teacher
            UPDATE Teacher
            SET IsEnable = @IsEnable
            WHERE TeacherID = @TeacherID;

            DECLARE @DisplayName NVARCHAR(50);
            SELECT @DisplayName = DisplayName FROM Teacher WHERE TeacherID = @TeacherID;

            -- Set the success message and success flag
            IF @IsEnable = 1
                SET @ErrorMessage = 'Teacher ' + @DisplayName + ' successfully enabled!';
            ELSE
                SET @ErrorMessage = 'Teacher ' + @DisplayName + ' successfully disabled!';
                
            SET @Success = 1;
        END
        ELSE
        BEGIN
            SET @ErrorMessage = 'Teacher not found!';
        END
    END TRY
    BEGIN CATCH
        SET @ErrorMessage = ERROR_MESSAGE();
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpsertSubject]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpsertSubject]
    @SubjectID BIGINT = NULL,
    @SubjectCode NVARCHAR(10),
    @Name NVARCHAR(20),
    @IsEnable BIT,
    @Result BIT OUTPUT,
    @ResultMsg VARCHAR(50) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

	--Reg no validation
    DECLARE @IsSubjectNameAvailable BIT;

	SET @IsSubjectNameAvailable = dbo.FN_CheckSubjectName(@Name,@SubjectID);

    IF @IsSubjectNameAvailable = 0
	BEGIN
		SET @ResultMsg = 'Subject name already exists';
		SET @Result = 0;
        RETURN;
    END

	--Display name validation
	DECLARE @IsSubjectCodeAvailable BIT;

	SET @IsSubjectCodeAvailable = dbo.FN_CheckSubjectCode(@SubjectCode,@SubjectID);

    IF @IsSubjectCodeAvailable = 0
	BEGIN
		SET @ResultMsg = 'Subject code already exists';
		SET @Result = 0;
        RETURN;
    END

    IF @SubjectID=0
    BEGIN
		
        -- Insert new student
        INSERT INTO Subject(SubjectCode,Name,IsEnable)
        VALUES (@SubjectCode, @Name, @IsEnable);

        SET @ResultMsg = 'Subject Successfully Added';
        SET @Result = 1;
    END
    ELSE
    BEGIN
		
		DECLARE @IsSubjectAllocated BIT;

		SET @IsSubjectAllocated = dbo.FN_CheckSubjectAllocated(@SubjectID);

		IF @IsSubjectAllocated = 1
		BEGIN
			SET @ResultMsg = 'Subject is allocated modification disabled';
			SET @Result = 0;
			RETURN;
		END

        -- Update existing student
        UPDATE Subject
        SET SubjectCode = @SubjectCode,
            Name=@Name,
            IsEnable = @IsEnable
        WHERE SubjectID = @SubjectID;

        SET @ResultMsg = 'Subject Successfully Updated';
        SET @Result = 1;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpsertSubjectAllocation]    Script Date: 7/19/2024 11:32:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpsertSubjectAllocation]
    @SubjectAllocationID BIGINT = NULL,
    @SubjectID NVARCHAR(10),
    @TeacherID NVARCHAR(20),
    @Result BIT OUTPUT,
    @ResultMsg VARCHAR(50) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

	--Reg no validation
    DECLARE @IsSubjectAllocationAvailable BIT;

	SET @IsSubjectAllocationAvailable = dbo.FN_CheckSubjectAllocation(@SubjectID,@TeacherID);

    IF @IsSubjectAllocationAvailable = 1
	BEGIN
		SET @ResultMsg = 'Subject Allocation already exists';
		SET @Result = 0;
        RETURN;
    END


    IF @SubjectAllocationID is null
    BEGIN
		
        -- Insert new student
        INSERT INTO Teacher_Subject_Allocation(SubjectID,TeacherID)
        VALUES (@SubjectID, @TeacherID);

        SET @ResultMsg = 'Subject Allocation Successfully Added';
        SET @Result = 1;
    END
    ELSE
    BEGIN
		
		DECLARE @IsSubjectAllocationInUse BIT;

		SET @IsSubjectAllocationInUse = dbo.FN_IsSubjectAllocationInUse(@SubjectAllocationID);

		IF @IsSubjectAllocationInUse = 1
		BEGIN
			SET @ResultMsg = 'Subject Allocation is follow by a student modification disabled';
			SET @Result = 0;
			RETURN;
		END

        -- Update existing student
        UPDATE Teacher_Subject_Allocation
        SET SubjectID = @SubjectID,
            TeacherID=@TeacherID
        WHERE SubjectAllocationID = @SubjectAllocationID;

        SET @ResultMsg = 'Subject Successfully Updated';
        SET @Result = 1;
    END
END;
GO
USE [master]
GO
ALTER DATABASE [SMS_DB] SET  READ_WRITE 
GO
