CREATE PROCEDURE [dbo].[Insert_Referee]
	@classRefereeId INT,
	@name NVARCHAR(50),
	@surname NVARCHAR(50),
	@birthday DATETIME,
	@cityId INT
AS
BEGIN
	INSERT INTO Referees(ClassRefereeId, NameReferee, SurnameReferee, BirthdayReferee, CityId)
	VALUES(@classRefereeId, @name, @surname, @birthday, @cityId)
END;