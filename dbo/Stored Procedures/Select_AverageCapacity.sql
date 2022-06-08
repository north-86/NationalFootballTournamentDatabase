CREATE PROCEDURE [dbo].[Select_AverageCapacity]
AS
BEGIN 
	SELECT AVG(Stadiums.Capacity) AS AverageStadiumCapacity
	FROM Stadiums
END;