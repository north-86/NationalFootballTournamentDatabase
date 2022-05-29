CREATE PROCEDURE [dbo].[Insert_Stadium]
	@cityId INT,
	@name NVARCHAR(50),
	@capacity INT,
	@year DATE
AS
BEGIN
	INSERT INTO Stadiums(CityId, NameStadium, Capacity, YearConstruction)
	VALUES(@cityId, @name, @capacity, @year)
END;