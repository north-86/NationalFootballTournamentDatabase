CREATE PROCEDURE [dbo].[sp_Tournaments_INSERT]
	@name NVARCHAR(50)
AS
BEGIN
	INSERT INTO Tournaments(NameTournament)
	VALUES(@name)
END;
