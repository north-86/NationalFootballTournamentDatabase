﻿CREATE PROCEDURE [dbo].[Update_Player]
	@id INT,
	@name NVARCHAR(50),
	@surname NVARCHAR(50),
	@birthday DATETIME,
	@nationId INT,
	@fcId INT,
	@rolePlayerId INT
AS
BEGIN 
	UPDATE Players
	SET NamePlayer = @name,
		SurnamePlayer = @surname,
		BirthdayPlayer = @birthday,
		NationId = @nationId,
		FCId = @fcId,
		RolePlayerId = @rolePlayerId
	WHERE PlayerId = @id
END;