CREATE PROCEDURE [dbo].[Select_RefereesClassCity]
AS
BEGIN
	SELECT ClassificationReferees.NameClassReferee, Referees.SurnameReferee, Referees.NameReferee, Cities.NameCity
	FROM Referees
	INNER JOIN ClassificationReferees ON Referees.ClassRefereeId = ClassificationReferees.ClassRefereeId
	INNER JOIN Cities ON Referees.CityId = Cities.CityId
	GROUP BY ClassificationReferees.NameClassReferee, Referees.SurnameReferee, Referees.NameReferee, Cities.NameCity
	ORDER BY NameClassReferee
END;