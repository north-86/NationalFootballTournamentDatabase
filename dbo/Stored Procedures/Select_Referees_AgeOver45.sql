CREATE PROCEDURE [dbo].[Select_Referees_AgeOver45]
AS
BEGIN
	SELECT ClassificationReferees.NameClassReferee, Referees.NameReferee, Referees.SurnameReferee, Referees.AgeReferee
	FROM Referees
	INNER JOIN ClassificationReferees ON Referees.ClassRefereeId = ClassificationReferees.ClassRefereeId
	WHERE AgeReferee > 45
	ORDER BY AgeReferee
END;