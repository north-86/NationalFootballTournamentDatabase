CREATE PROCEDURE [dbo].[Select_RefereeAllowedAppointedMatchByLocation]
	@fcId INT
AS
BEGIN
	SELECT Referees.SurnameReferee, Referees.NameReferee, Cities.NameCity
	FROM Referees
	INNER JOIN Cities ON Referees.CityId = Cities.CityId
	INNER JOIN FootballClubs ON Referees.CityId != FootballClubs.CityId
	WHERE FootballClubs.FCId = @fcId
	ORDER BY NameCity
END;