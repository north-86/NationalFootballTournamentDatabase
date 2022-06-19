CREATE PROCEDURE [dbo].[Select_TournamentMatches]
AS
BEGIN 
	SELECT Tournaments.NameTournament, Matches.FC1Id, Matches.FC2Id
	FROM Matches
	INNER JOIN Tournaments ON Matches.TournamentId = Matches.TournamentId
	INNER JOIN FootballClubs ON Matches.FC1Id = FootballClubs.FCId
							AND Matches.FC2Id = FootballClubs.FCId
	ORDER BY NameTournament
END;