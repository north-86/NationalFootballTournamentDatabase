CREATE PROCEDURE [dbo].[sp_RolePlayers_INSERT]
	@role NVARCHAR(50)
AS
BEGIN
	INSERT INTO RolePlayers(RolePlayer)
	VALUES(@role)
END;