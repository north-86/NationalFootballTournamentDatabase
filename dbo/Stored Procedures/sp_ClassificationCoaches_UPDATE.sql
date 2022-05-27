CREATE PROCEDURE [dbo].[sp_ClassificationCoaches_UPDATE]
	@id INT,
	@nameClass NVARCHAR(50)
AS
BEGIN
	UPDATE ClassificationCoaches
	SET NameClassCoach = @nameClass
	WHERE ClassCoachId = @id
END;