CREATE PROCEDURE [dbo].[sp_Stadiums_INSERT]
	@cityId INT,
	@name NVARCHAR(50),
	@capacity INT,
	@year DATE
AS
BEGIN
	INSERT INTO Stadiums(CityId, NameStadium, Capacity, YearConstruction)
	VALUES(@cityId, @name, @capacity, @year)
END;