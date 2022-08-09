CREATE TABLE [dbo].[Players]
(
	[PlayerId] INT PRIMARY KEY IDENTITY (1, 1) NOT NULL, 
    [NamePlayer] NVARCHAR(50) NOT NULL, 
    [SurnamePlayer] NVARCHAR(50) NOT NULL,
    [BirthdayPlayer] DATETIME NOT NULL,
    [AgePlayer] AS (FLOOR(DATEDIFF(DAY, [BirthdayPlayer], GETDATE()) / 365.25)), 
    [NationId] INT NOT NULL, 
    [FCId] INT NOT NULL, 
    [RolePlayerId] INT NOT NULL, 
    CONSTRAINT [FK_Players_Nationalities] FOREIGN KEY ([NationId]) REFERENCES [Nationalities]([NationId]), 
    CONSTRAINT [FK_Players_FootballClubs] FOREIGN KEY ([FCId]) REFERENCES [FootballClubs]([FCId]), 
    CONSTRAINT [FK_Players_RolePlayers] FOREIGN KEY ([RolePlayerId]) REFERENCES [RolePlayers]([RolePlayerId])
)
