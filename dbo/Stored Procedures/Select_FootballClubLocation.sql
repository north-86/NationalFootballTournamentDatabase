CREATE PROCEDURE [dbo].[Select_FootballClubLocation]
AS
BEGIN
	SELECT FootballClubs.NameFC, Cities.NameCity, Stadiums.NameStadium
	FROM FootballClubs
	INNER JOIN Cities ON FootballClubs.CityId = Cities.CityId
	INNER JOIN Stadiums ON FootballClubs.StadiumId = Stadiums.StadiumId
END;
