CREATE PROCEDURE [dbo].[Update_RolePlayer]
	@id INT,
	@role NVARCHAR(50)
AS
BEGIN
	UPDATE RolePlayers
	SET RolePlayer = @role
	WHERE RolePlayerId = @id
END;