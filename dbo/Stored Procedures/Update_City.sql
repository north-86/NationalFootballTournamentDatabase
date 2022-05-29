CREATE PROCEDURE [dbo].[Update_City]
	@id INT,
	@name NVARCHAR(50)
AS
BEGIN
	UPDATE Cities
	SET NameCity = @name
	WHERE CityId = @id
END;