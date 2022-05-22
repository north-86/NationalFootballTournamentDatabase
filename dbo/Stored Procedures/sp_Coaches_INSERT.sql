CREATE PROCEDURE [dbo].[sp_Coaches_INSERT]
	@name NVARCHAR(50),
	@surname NVARCHAR(50),
	@age INT,
	@nationId INT,
	@fcId INT,
	@classCoachId INT
AS
BEGIN
	INSERT INTO Coaches(NameCoach, SurnameCoach, AgeCoach, NationId, FCId, ClassCoachId)
	VALUES(@name, @surname, @age, @nationId, @fcId, @classCoachId)
END;