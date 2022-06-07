CREATE PROCEDURE [dbo].[Insert_Player]
	@name NVARCHAR(50),
	@surname NVARCHAR(50),
	@birthday DATETIME,
	@nationId INT,
	@fcId INT,
	@rolePlayerId INT
AS
BEGIN
	INSERT INTO Players(NamePlayer, SurnamePlayer, BirthdayPlayer, NationId, FCId, RolePlayerId)
	VALUES(@name, @surname, @birthday, @nationId, @fcId, @rolePlayerId)
END;