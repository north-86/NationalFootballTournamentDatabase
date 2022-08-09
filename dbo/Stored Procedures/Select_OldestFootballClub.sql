CREATE PROCEDURE [dbo].[Select_OldestFootballClub]
AS
BEGIN
	SELECT FootballClubs.NameFC, FootballClubs.YearFoundation
	FROM FootballClubs
	WHERE YearFoundation IN (SELECT MIN(YearFoundation)
							FROM FootballClubs)
	GROUP BY FootballClubs.NameFC, FootballClubs.YearFoundation
END;
