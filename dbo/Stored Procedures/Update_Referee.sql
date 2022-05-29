CREATE PROCEDURE [dbo].[Update_Referee]
	@id INT,
	@classRefereeId INT,
	@name NVARCHAR(50),
	@surname NVARCHAR(50),
	@age INT,
	@cityId INT
AS
BEGIN
	UPDATE Referees
	SET ClassRefereeId = @classRefereeId,
		NameReferee = @name,
		SurnameReferee = @surname,
		AgeReferee = @age,
		CityId = @cityId
	WHERE RefereeId = @id
END;