CREATE PROCEDURE [dbo].[Update_Tournament]
	@id INT,
	@name NVARCHAR(50)
AS
BEGIN
	UPDATE Tournaments
	SET NameTournament = @name
	WHERE TournamentId = @id
END;