CREATE PROCEDURE [dbo].[Select_CoachNation]
AS
BEGIN
	SELECT Nationalities.Nationality, Coaches.SurnameCoach, Coaches.NameCoach
	FROM Nationalities
	INNER JOIN Coaches ON Nationalities.NationId = Coaches.NationId
	GROUP BY Nationalities.Nationality, Coaches.SurnameCoach, Coaches.NameCoach
	ORDER BY Nationality
END;