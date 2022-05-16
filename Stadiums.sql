CREATE TABLE [dbo].[Stadiums]
(
	[StadiumId] INT PRIMARY KEY IDENTITY (1, 1) NOT NULL, 
    [CityId] INT NOT NULL, 
    [NameStadium] NVARCHAR(50) NOT NULL, 
    [Capacity] NVARCHAR(50) NOT NULL, 
    [YearConstruction] DATE NOT NULL, 
    CONSTRAINT [FK_Stadiums_Cities] FOREIGN KEY ([CityId]) REFERENCES [Cities]([CityId]) ON UPDATE CASCADE
)
