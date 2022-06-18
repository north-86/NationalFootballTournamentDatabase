CREATE PROCEDURE [dbo].[Select_CoachNation]
AS
BEGIN
	SELECT Nationalities.Nationality, Coaches.SurnameCoach, Coaches.NameCoach
	FROM Nationalities
	INNER JOIN Coaches ON Nationalities.NationId = Coaches.NationId
	ORDER BY Nationality
END;