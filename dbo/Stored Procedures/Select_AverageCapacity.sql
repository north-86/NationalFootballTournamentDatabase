CREATE PROCEDURE [dbo].[Select_AverageCapacity]
AS
BEGIN 
	SELECT AVG(Stadiums.Capacity)
	FROM Stadiums
END;