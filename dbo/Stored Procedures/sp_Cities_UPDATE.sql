CREATE PROCEDURE [dbo].[sp_Cities_UPDATE]
	@id INT,
	@name NVARCHAR(50)
AS
BEGIN
	UPDATE Cities
	SET NameCity = @name
	WHERE CityId = @id
END;