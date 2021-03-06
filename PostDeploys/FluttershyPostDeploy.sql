/*
Run this script on:

        ..Ponies_Dev    -  This database will be modified

to synchronize it with:

        ..Fluttershy

You are recommended to back up your database before running this script

Script created by SQL Compare version 13.1.8.5525 from Red Gate Software Ltd at 19/01/2018 15:10:39

*/
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO
BEGIN TRANSACTION
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering [dbo].[spOnBothButDifferent]'
GO
ALTER PROCEDURE [dbo].[spOnBothButDifferent]
AS
    SELECT  Numbers ,
            Words ,
            SpecialFluttershyColumn
    FROM    dbo.tblTheSame;
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
COMMIT TRANSACTION
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF
IF (@Success = 1) PRINT 'The database update succeeded'
ELSE BEGIN
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
	PRINT 'The database update failed'
END
GO
