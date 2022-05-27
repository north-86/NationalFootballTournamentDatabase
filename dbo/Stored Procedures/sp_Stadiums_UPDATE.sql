CREATE PROCEDURE [dbo].[sp_Stadiums_UPDATE]
	@id INT,
	@cityId INT,
	@name NVARCHAR(50),
	@capacity INT,
	@year DATE
AS
BEGIN
	UPDATE Stadiums
	SET CityId = @cityId,
		NameStadium = @name,
		Capacity = @capacity,
		YearConstruction = @year
	WHERE StadiumId = @id
END;