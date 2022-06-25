CREATE PROCEDURE [dbo].[Select_Players_Age]
AS
BEGIN
	SELECT Players.NamePlayer, Players.SurnamePlayer, Players.AgePlayer, Nationalities.Nationality, FootballClubs.NameFC, RolePlayers.RolePlayer
	FROM Players
	INNER JOIN Nationalities ON Players.NationId = Nationalities.NationId
	INNER JOIN FootballClubs ON Players.FCId = FootballClubs.FCId
	INNER JOIN RolePlayers ON Players.RolePlayerId = RolePlayers.RolePlayerId
	ORDER BY AgePlayer DESC
END;	