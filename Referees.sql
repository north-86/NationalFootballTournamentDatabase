CREATE TABLE [dbo].[Referees]
(
	[RefereeId] INT PRIMARY KEY IDENTITY (1, 1) NOT NULL, 
    [ClassRefereeId] INT NOT NULL, 
    [NameReferee] NVARCHAR(50) NOT NULL, 
    [SurnameReferee] NVARCHAR(50) NOT NULL, 
    [AgeReferee] INT NOT NULL, 
    [CityId] INT NOT NULL, 
    CONSTRAINT [FK_Referees_ClassificationReferees] FOREIGN KEY ([ClassRefereeId]) REFERENCES [ClassificationReferees]([ClassRefereeId]), 
    CONSTRAINT [FK_Referees_Cities] FOREIGN KEY ([CityId]) REFERENCES [Cities]([CityId])
)
