CREATE PROCEDURE [dbo].[Select_PlayerNation]
AS
BEGIN 
	SELECT Nationalities.Nationality, Players.SurnamePlayer, Players.NamePlayer
	FROM Nationalities
	INNER JOIN Players ON Nationalities.NationId = Players.NationId
	ORDER BY Nationality
END;
