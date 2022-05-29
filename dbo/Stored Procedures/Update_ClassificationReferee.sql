CREATE PROCEDURE [dbo].[Update_ClassificationReferee]
	@id INT,
	@nameClass NVARCHAR(50)
AS
BEGIN
	UPDATE ClassificationReferees
	SET NameClassReferee = @nameClass
	WHERE ClassRefereeId = @id
END;