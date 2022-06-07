CREATE PROCEDURE [dbo].[Update_Coach]
	@id INT,
	@name NVARCHAR(50),
	@surname NVARCHAR(50),
	@birthday DATETIME,
	@nationId INT,
	@fcId INT,
	@classCoachId INT
AS
BEGIN
	UPDATE Coaches
	SET NameCoach = @name,
		SurnameCoach = @surname,
		BirthdayCoach = @birthday,
		NationId = @nationId,
		FCId = @fcId,
		ClassCoachId = @classCoachId
	WHERE CoachId = @id
END;