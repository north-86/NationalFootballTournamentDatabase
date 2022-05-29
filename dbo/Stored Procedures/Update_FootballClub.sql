CREATE PROCEDURE [dbo].[Update_FootballClub]
	@id INT,
	@cityId INT,
	@stadiumId INT,
	@name NVARCHAR(50),
	@year DATE
AS
BEGIN
	UPDATE FootballClubs
	SET CityId = @cityId,
		StadiumId = @stadiumId,
		NameFC = @name,
		YearFoundation = @year
	WHERE FCId = @id
END;