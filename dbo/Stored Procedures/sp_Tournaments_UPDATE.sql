CREATE PROCEDURE [dbo].[sp_Tournaments_UPDATE]
	@id INT,
	@name NVARCHAR(50)
AS
BEGIN
	UPDATE Tournaments
	SET NameTournament = @name
	WHERE TournamentId = @id
END;