CREATE PROCEDURE [dbo].[sp_ClassificationReferees_INSERT]
	@nameClass NVARCHAR(50)
AS
BEGIN
	INSERT INTO ClassificationReferees(NameClassReferee)
	VALUES(@nameClass)
END;