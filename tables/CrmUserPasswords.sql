CREATE TABLE CrmUserPasswords (
    Id UNIQUEIDENTIFIER CONSTRAINT PK_CrmUserPasswords PRIMARY KEY DEFAULT (NEWID()),
    CreatedDate DATETIME2(0) NOT NULL DEFAULT (GETUTCDATE()),
    UpdatedDate DATETIME2(0),
    DeletedDate DATETIME2(0),
    PasswordHash NVARCHAR(500),
    Salt NVARCHAR(100) NOT NULL,
    CrmUserId UNIQUEIDENTIFIER CONSTRAINT FK_CrmUsers_CrmUserPasswords
        FOREIGN KEY REFERENCES CrmUsers (Id) ON DELETE CASCADE,
)

CREATE UNIQUE INDEX UIX_CrmUserPasswords_CrmUserId_PasswordHash ON CrmUserPasswords (CrmUserId, PasswordHash)
