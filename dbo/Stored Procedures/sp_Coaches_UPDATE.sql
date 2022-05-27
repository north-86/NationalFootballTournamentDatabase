CREATE PROCEDURE [dbo].[sp_Coaches_UPDATE]
	@id INT,
	@name NVARCHAR(50),
	@surname NVARCHAR(50),
	@age INT,
	@nationId INT,
	@fcId INT,
	@classCoachId INT
AS
BEGIN
	UPDATE Coaches
	SET NameCoach = @name,
		SurnameCoach = @surname,
		AgeCoach = @age,
		NationId = @nationId,
		FCId = @fcId,
		ClassCoachId = @classCoachId
	WHERE CoachId = @id
END;