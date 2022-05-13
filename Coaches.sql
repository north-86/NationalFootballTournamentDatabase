CREATE TABLE [dbo].[Coaches]
(
	[CoachId] INT PRIMARY KEY IDENTITY (1, 1) NOT NULL, 
    [NameCoach] NVARCHAR(50) NOT NULL, 
    [SurnameCoach] NVARCHAR(50) NOT NULL, 
    [AgeCoach] INT NOT NULL, 
    [NationId] INT NOT NULL, 
    [FCId] INT NOT NULL, 
    [ClassCoachId] INT NOT NULL, 
    CONSTRAINT [FK_Coaches_Nationalities] FOREIGN KEY ([NationId]) REFERENCES [Nationalities]([NationId]), 
    CONSTRAINT [FK_Coaches_FootballClubs] FOREIGN KEY ([FCId]) REFERENCES [FootballClubs]([FCId]), 
    CONSTRAINT [FK_Coaches_ClassificationCoaches] FOREIGN KEY ([ClassCoachId]) REFERENCES [ClassificationCoaches]([ClassCoachId])
)
