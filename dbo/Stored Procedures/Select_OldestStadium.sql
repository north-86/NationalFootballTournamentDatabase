CREATE PROCEDURE [dbo].[Select_OldestStadium]
AS
BEGIN 
	SELECT Stadiums.NameStadium, Stadiums.YearConstruction
	FROM Stadiums
	WHERE YearConstruction IN (SELECT MIN(YearConstruction)
							  FROM Stadiums)
	GROUP BY Stadiums.NameStadium, Stadiums.YearConstruction
END;
