CREATE PROCEDURE [dbo].[Insert_ClassificationCoach]
	@nameClass NVARCHAR(50)
AS
BEGIN
	INSERT INTO ClassificationCoaches(NameClassCoach)
	VALUES(@nameClass)
END;