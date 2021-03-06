CREATE TABLE CrmRefreshTokens (
    Id UNIQUEIDENTIFIER CONSTRAINT PK_CrmRefreshTokens PRIMARY KEY DEFAULT (NEWID()),
    CreatedDate DATETIME2(0) NOT NULL DEFAULT GETUTCDATE(),
    UpdatedDate DATETIME2(0),
    ExpireDate DATETIME2(0) NOT NULL,
    CrmUserId UNIQUEIDENTIFIER CONSTRAINT FK_CrmUsers_CrmRefreshTokens
        FOREIGN KEY REFERENCES CrmUsers (Id) ON DELETE CASCADE,
    DeviceName NVARCHAR(100) NOT NULL,
    IpAddress CHAR(40) NOT NULL,
    Token NVARCHAR(200) NOT NULL,
)

CREATE UNIQUE INDEX UIX_CrmRefreshTokens_CrmUserId_DeviceName_IpAddress
ON CrmRefreshTokens (CrmUserId, DeviceName, IpAddress)

CREATE UNIQUE INDEX UIX_CrmRefreshTokens_Token
ON CrmRefreshTokens (Token)
