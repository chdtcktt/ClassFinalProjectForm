USE AdvWebDevProject
GO
/****** Object:  StoredProcedure [dbo].[pUpdClassStudents]    Script Date: 11/12/2013 8:00:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE pCreateLoginRequest ( 
  @Name nVarchar(100),
  @Email nVarchar(100),
  @LoginName nVarchar(100),
  @DateNeeded DateTime,
  @NewOrReactivate nVarchar(100),
  @ReasonForAccess nVarchar(100) 
)
AS
/***************************************************
Title: pCreateLoginRequest
Dev: Chad Tackett
Date: 11/12/2013
Desc: This sproc will create new login entries into chapter 7 homework

ChangeLog: (Who, When, What)
***************************************************/
BEGIN -- Body of stored procedure
  BEGIN TRY
    BEGIN TRANSACTION;

	INSERT INTO AdvWebDevProject.dbo.LoginRequests
		(Name
		,EmailAddress
		,LoginName
		,DateNeededBy
		,NewOrReactivate
		,ReasonForAccess)
	VALUES
		(@Name
		,@Email
		,@LoginName
		,@DateNeeded
		,@NewOrReactivate
		,@ReasonForAccess);

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
