﻿CREATE PROCEDURE [dbo].[Insert_FootballClub]
	@cityId INT,
	@stadiumId INT,
	@name NVARCHAR(50),
	@year DATE
AS
BEGIN
	INSERT INTO FootballClubs(CityId, StadiumId, NameFC, YearFoundation)
	VALUES(@cityId, @stadiumId, @name, @year)
END;