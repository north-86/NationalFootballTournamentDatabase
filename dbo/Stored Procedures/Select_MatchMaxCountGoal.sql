CREATE PROCEDURE [dbo].[Select_MatchMaxCountGoal]
AS
BEGIN 
	SELECT Matches.MatchId, Tournaments.NameTournament, FootballClubs.FCId, FootballClubs.FCId, Matches.CountGoalsFC1, Matches.CountGoalsFC2, MAX(Matches.CountGoalsFC1 + Matches.CountGoalsFC2) AS MaximumNumberGoals
	FROM Matches
	INNER JOIN Tournaments ON Matches.TournamentId = Tournaments.TournamentId
	INNER JOIN FootballClubs ON Matches.FC1Id = FootballClubs.FCId
								AND Matches.FC2Id = FootballClubs.FCId
	ORDER BY MaximumNumberGoals DESC
END;