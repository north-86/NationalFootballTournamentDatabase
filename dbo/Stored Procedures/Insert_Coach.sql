CREATE PROCEDURE [dbo].[Insert_Coach]
	@name NVARCHAR(50),
	@surname NVARCHAR(50),
	@birthday DATETIME,
	@nationId INT,
	@fcId INT,
	@classCoachId INT
AS
BEGIN
	INSERT INTO Coaches(NameCoach, SurnameCoach, BirthdayCoach, NationId, FCId, ClassCoachId)
	VALUES(@name, @surname, @birthday, @nationId, @fcId, @classCoachId)
END;