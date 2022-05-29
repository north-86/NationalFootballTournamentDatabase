CREATE PROCEDURE [dbo].[Insert_Tournament]
	@name NVARCHAR(50)
AS
BEGIN
	INSERT INTO Tournaments(NameTournament)
	VALUES(@name)
END;
