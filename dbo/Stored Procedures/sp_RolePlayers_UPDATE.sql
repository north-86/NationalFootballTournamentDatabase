CREATE PROCEDURE [dbo].[sp_RolePlayers_UPDATE]
	@id INT,
	@role NVARCHAR(50)
AS
BEGIN
	UPDATE RolePlayers
	SET RolePlayer = @role
	WHERE RolePlayerId = @id
END;