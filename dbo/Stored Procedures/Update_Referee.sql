CREATE PROCEDURE [dbo].[Update_Referee]
	@id INT,
	@classRefereeId INT,
	@name NVARCHAR(50),
	@surname NVARCHAR(50),
	@birthday DATETIME,
	@cityId INT
AS
BEGIN
	UPDATE Referees
	SET ClassRefereeId = @classRefereeId,
		NameReferee = @name,
		SurnameReferee = @surname,
		BirthdayReferee = @birthday,
		CityId = @cityId
	WHERE RefereeId = @id
END;