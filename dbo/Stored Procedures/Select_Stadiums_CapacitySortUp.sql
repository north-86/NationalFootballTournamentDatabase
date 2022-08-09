CREATE PROCEDURE [dbo].[Select_Stadiums_CapacitySortUp]
AS
BEGIN
	SELECT Stadiums.NameStadium, Stadiums.Capacity
	FROM Stadiums
	GROUP BY Stadiums.NameStadium, Stadiums.Capacity
	ORDER BY Capacity ASC
END;