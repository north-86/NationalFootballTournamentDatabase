CREATE PROCEDURE [dbo].[Select_CoachesFootballClubs]
AS
BEGIN
	SELECT FootballClubs.NameFC, ClassificationCoaches.NameClassCoach, Coaches.SurnameCoach, Coaches.NameCoach, Nationalities.Nationality
	FROM Coaches
	INNER JOIN FootballClubs ON Coaches.FCId = FootballClubs.FCId
	INNER JOIN ClassificationCoaches ON Coaches.ClassCoachId = ClassificationCoaches.ClassCoachId
	INNER JOIN Nationalities ON Coaches.NationId = Nationalities.NationId
	ORDER BY NameFC, NameClassCoach
END;