CREATE PROCEDURE [dbo].[Select_NewestStadium]
AS
BEGIN
	SELECT Stadiums.NameStadium, Stadiums.YearConstruction
	FROM Stadiums
	WHERE YearConstruction IN (SELECT MAX(YearConstruction)
							  FROM Stadiums)
	GROUP BY Stadiums.NameStadium, Stadiums.YearConstruction
END;