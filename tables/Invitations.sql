CREATE TABLE Invitations (
    Id UNIQUEIDENTIFIER CONSTRAINT PK_Invitations PRIMARY KEY DEFAULT (NEWID()),
    CreatedDate DATETIME2(0) NOT NULL,
    UpdatedDate DATETIME2(0),
    ExpireDate DATETIME2(0) NOT NULL,
    Accepted BIT,
    DecisionMadeDate DATETIME2(0),
    InvitationType INT NOT NULL CONSTRAINT FK_InvitationTypes_Invitations FOREIGN KEY REFERENCES InvitationTypes(Code)
)
