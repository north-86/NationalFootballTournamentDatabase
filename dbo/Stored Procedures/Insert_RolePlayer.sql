CREATE PROCEDURE [dbo].[Insert_RolePlayer]
	@role NVARCHAR(50)
AS
BEGIN
	INSERT INTO RolePlayers(RolePlayer)
	VALUES(@role)
END;