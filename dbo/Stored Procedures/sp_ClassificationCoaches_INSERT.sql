CREATE PROCEDURE [dbo].[sp_ClassificationCoaches_INSERT]
	@nameClass NVARCHAR(50)
AS
BEGIN
	INSERT INTO ClassificationCoaches(NameClassCoach)
	VALUES(@nameClass)
END;