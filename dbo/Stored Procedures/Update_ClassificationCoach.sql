CREATE PROCEDURE [dbo].[Update_ClassificationCoach]
	@id INT,
	@nameClass NVARCHAR(50)
AS
BEGIN
	UPDATE ClassificationCoaches
	SET NameClassCoach = @nameClass
	WHERE ClassCoachId = @id
END;