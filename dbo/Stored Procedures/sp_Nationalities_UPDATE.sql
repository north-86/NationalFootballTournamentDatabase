CREATE PROCEDURE [dbo].[sp_Nationalities_UPDATE]
	@id INT,
	@nation NVARCHAR(50)
AS
BEGIN
	UPDATE Nationalities
	SET Nationality = @nation
	WHERE NationId = @id
END;
