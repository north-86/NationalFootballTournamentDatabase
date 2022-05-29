CREATE PROCEDURE [dbo].[Update_Nationality]
	@id INT,
	@nation NVARCHAR(50)
AS
BEGIN
	UPDATE Nationalities
	SET Nationality = @nation
	WHERE NationId = @id
END;
