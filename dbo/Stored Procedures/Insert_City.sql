CREATE PROCEDURE [dbo].[Insert_City]
	@name NVARCHAR(50)
AS
BEGIN
	INSERT INTO Cities(NameCity)
	VALUES(@name)
END;
