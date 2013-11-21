USE AdvWebDevProject
GO
/****** Object:  StoredProcedure [dbo].[pUpdClassStudents]    Script Date: 11/12/2013 8:00:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE pSelClassesByStudentId ( 
  @StudentId int)
AS
/***************************************************
Title: pSelClassesByStudentId
Dev: Chad Tackett
Date: 11/12/2013
Desc: This sproc will get all classes from a student Id

ChangeLog: (Who, When, What)
***************************************************/
BEGIN -- Body of stored procedure
  BEGIN TRY
    BEGIN TRANSACTION;

	SELECT        Classes.*
	FROM          Classes INNER JOIN
                         ClassStudents ON Classes.ClassId = ClassStudents.ClassId INNER JOIN
                         Students ON ClassStudents.StudentId = Students.StudentId 
	WHERE         Students.StudentId = @StudentId 

    COMMIT TRANSACTION;
    RETURN +100
  END TRY     
  BEGIN CATCH
    ROLLBACK TRANSACTION;
    DECLARE @Message nVarchar(1000);
    SELECT @Message = ERROR_MESSAGE();
    RAISERROR(@Message, 15, 1);     
    RETURN -100     
  END CATCH
END -- Body of stored procedure
GO
