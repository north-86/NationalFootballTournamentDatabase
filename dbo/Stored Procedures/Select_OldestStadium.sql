CREATE PROCEDURE [dbo].[Select_OldestStadium]
AS
BEGIN 
	SELECT Stadiums.NameStadium, Stadiums.YearConstruction
	FROM Stadiums
	WHERE YearConstruction IN (SELECT MIN(YearConstruction)
							  FROM Stadiums)
END;
