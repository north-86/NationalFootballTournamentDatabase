CREATE PROCEDURE [dbo].[Insert_ClassificationReferee]
	@nameClass NVARCHAR(50)
AS
BEGIN
	INSERT INTO ClassificationReferees(NameClassReferee)
	VALUES(@nameClass)
END;