CREATE PROCEDURE [dbo].[sp_Players_INSERT]
	@name NVARCHAR(50),
	@surname NVARCHAR(50),
	@age INT,
	@nationId INT,
	@fcId INT,
	@rolePlayerId INT
AS
BEGIN
	INSERT INTO Players(NamePlayer, SurnamePlayer, AgePlayer, NationId, FCId, RolePlayerId)
	VALUES(@name, @surname, @age, @nationId, @fcId, @rolePlayerId)
END;