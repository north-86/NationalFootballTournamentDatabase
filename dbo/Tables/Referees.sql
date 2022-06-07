CREATE TABLE [dbo].[Referees]
(
	[RefereeId] INT PRIMARY KEY IDENTITY (1, 1) NOT NULL, 
    [ClassRefereeId] INT NOT NULL, 
    [NameReferee] NVARCHAR(50) NOT NULL, 
    [SurnameReferee] NVARCHAR(50) NOT NULL,
    [BirthdayReferee] DATETIME NOT NULL,
    [AgeReferee] AS (FLOOR(DATEDIFF(DAY, [BirthdayReferee], GETDATE()) / 365.25)) PERSISTED, 
    [CityId] INT NOT NULL, 
    CONSTRAINT [FK_Referees_ClassificationReferees] FOREIGN KEY ([ClassRefereeId]) REFERENCES [ClassificationReferees]([ClassRefereeId]) ON UPDATE CASCADE, 
    CONSTRAINT [FK_Referees_Cities] FOREIGN KEY ([CityId]) REFERENCES [Cities]([CityId]) ON UPDATE CASCADE
)
