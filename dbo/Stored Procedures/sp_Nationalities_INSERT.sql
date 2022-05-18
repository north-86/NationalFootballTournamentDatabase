CREATE PROCEDURE [dbo].[sp_Nationalities_INSERT]
	@nation NVARCHAR(50)
AS
BEGIN
	INSERT INTO Nationalities(Nationality)
	VALUES(@nation)
END;
