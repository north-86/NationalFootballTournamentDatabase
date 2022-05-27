CREATE PROCEDURE [dbo].[sp_ClassificationReferees_UPDATE]
	@id INT,
	@nameClass NVARCHAR(50)
AS
BEGIN
	UPDATE ClassificationReferees
	SET NameClassReferee = @nameClass
	WHERE ClassRefereeId = @id
END;