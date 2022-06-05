CREATE PROCEDURE [dbo].[Select_Stadiums_CapacitySortUp]
AS
BEGIN
	SELECT Stadiums.NameStadium, Stadiums.Capacity
	FROM Stadiums
	ORDER BY Capacity ASC
END;