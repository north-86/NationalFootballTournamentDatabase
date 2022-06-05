CREATE PROCEDURE [dbo].[Select_Stadiums_CapacitySortDown]
AS
BEGIN
	SELECT Stadiums.NameStadium, Stadiums.Capacity
	FROM Stadiums
	ORDER BY Capacity DESC
END;