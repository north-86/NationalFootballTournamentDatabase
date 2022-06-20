CREATE PROCEDURE [dbo].[Select_NewestFootballClub]
AS
BEGIN
	SELECT FootballClubs.NameFC, FootballClubs.YearFoundation
	FROM FootballClubs
	WHERE YearFoundation IN (SELECT MAX(YearFoundation)
							FROM FootballClubs)
END;