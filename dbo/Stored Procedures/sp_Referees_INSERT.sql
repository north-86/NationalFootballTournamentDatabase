CREATE PROCEDURE [dbo].[sp_Referees_INSERT]
	@classRefereeId INT,
	@name NVARCHAR(50),
	@surname NVARCHAR(50),
	@age INT,
	@cityId INT
AS
BEGIN
	INSERT INTO Referees(ClassRefereeId, NameReferee, SurnameReferee, AgeReferee, CityId)
	VALUES(@classRefereeId, @name, @surname, @age, @cityId)
END;