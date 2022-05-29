CREATE PROCEDURE [dbo].[Insert_Nationality]
	@nation NVARCHAR(50)
AS
BEGIN
	INSERT INTO Nationalities(Nationality)
	VALUES(@nation)
END;
