CREATE TABLE [dbo].[FootballClubs]
(
	[FCId] INT PRIMARY KEY IDENTITY (1, 1) NOT NULL, 
    [CityId] INT NOT NULL, 
    [StadiumId] INT NOT NULL, 
    [NameFC] NVARCHAR(50) NOT NULL, 
    [YearFoundation] DATE NOT NULL, 
    CONSTRAINT [FK_FootballClubs_Cities] FOREIGN KEY ([CityId]) REFERENCES [Cities]([CityId]) ON UPDATE CASCADE, 
    CONSTRAINT [FK_FootballClubs_Stadiums] FOREIGN KEY ([StadiumId]) REFERENCES [Stadiums]([StadiumId]) ON UPDATE CASCADE
)
