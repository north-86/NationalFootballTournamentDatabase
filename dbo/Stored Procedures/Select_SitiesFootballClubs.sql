CREATE PROCEDURE [dbo].[Select_SitiesFootballClubs]
AS
BEGIN
	SELECT Cities.NameCity, FootballClubs.NameFC
	FROM Cities
	INNER JOIN FootballClubs ON Cities.CityId = FootballClubs.CityId
	ORDER BY NameCity
END;