CREATE TABLE [dbo].[Matches]
(
	[MatchId] INT PRIMARY KEY IDENTITY (1, 1) NOT NULL, 
    [TournamentId] INT NOT NULL, 
    [ChiefRefereeId] INT NOT NULL, 
    [LeftLinesmanId] INT NOT NULL, 
    [RightLinesmanId] INT NOT NULL, 
    [ReserveRefereeId] INT NOT NULL, 
    [VARId] INT NOT NULL, 
    [VARAssistantId] INT NOT NULL, 
    [FC1Id] INT NOT NULL, 
    [FC2Id] INT NOT NULL, 
    [CountGoalsFC1] INT NOT NULL, 
    [CountGoalsFC2] INT NOT NULL, 
    CONSTRAINT [FK_Matches_Tournaments] FOREIGN KEY ([TournamentId]) REFERENCES [Tournaments]([TournamentId]), 
    CONSTRAINT [FK_Matches_Referees1] FOREIGN KEY ([ChiefRefereeId]) REFERENCES [Referees]([RefereeId]), 
    CONSTRAINT [FK_Matches_Referees2] FOREIGN KEY ([LeftLinesmanId]) REFERENCES [Referees]([RefereeId]), 
    CONSTRAINT [FK_Matches_Referees3] FOREIGN KEY ([RightLinesmanId]) REFERENCES [Referees]([RefereeId]), 
    CONSTRAINT [FK_Matches_Referees4] FOREIGN KEY ([ReserveRefereeId]) REFERENCES [Referees]([RefereeId]), 
    CONSTRAINT [FK_Matches_Referees5] FOREIGN KEY ([VARId]) REFERENCES [Referees]([RefereeId]), 
    CONSTRAINT [FK_Matches_Referees6] FOREIGN KEY ([VARAssistantId]) REFERENCES [Referees]([RefereeId]), 
    CONSTRAINT [FK_Matches_FootballClubs1] FOREIGN KEY ([FC1Id]) REFERENCES [FootballClubs]([FCId]), 
    CONSTRAINT [FK_Matches_FootballClubs2] FOREIGN KEY ([FC2Id]) REFERENCES [FootballClubs]([FCId])
)
