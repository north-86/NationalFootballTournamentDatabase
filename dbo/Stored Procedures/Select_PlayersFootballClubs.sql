CREATE PROCEDURE [dbo].[Select_PlayersFootballClubs]
AS
BEGIN 
	SELECT FootballClubs.NameFC, RolePlayers.RolePlayer, Players.SurnamePlayer, Players.NamePlayer, Nationalities.Nationality
	FROM Players
	INNER JOIN FootballClubs ON Players.FCId = FootballClubs.FCId
	INNER JOIN RolePlayers ON Players.RolePlayerId = RolePlayers.RolePlayerId
	INNER JOIN Nationalities ON Players.NationId = Nationalities.NationId
	GROUP BY FootballClubs.NameFC, RolePlayers.RolePlayer, Players.SurnamePlayer, Players.NamePlayer, Nationalities.Nationality
	ORDER BY NameFC, RolePlayer
END;