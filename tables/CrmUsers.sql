use Core

CREATE TABLE CrmUsers (
    Id UNIQUEIDENTIFIER CONSTRAINT PK_CrmUsers PRIMARY KEY DEFAULT (NEWID()),
    CreatedDate DATETIME2(0) NOT NULL DEFAULT (GETUTCDATE()),
    UpdatedDate DATETIME2(0),
    EmailAddress NVARCHAR(250) NOT NULL,
    FirstName NVARCHAR(100) NOT NULL,
    LastName NVARCHAR(100) NOT NULL,
);

CREATE UNIQUE INDEX UIX_CrmUsers_EmailAddress ON CrmUsers (EmailAddress);

CREATE TABLE PermissionCodes (
    Code CHAR(40) NOT NULL,
)
CREATE UNIQUE INDEX UIX_PermissionCodes_Code ON PermissionCodes (Code)

CREATE TABLE CrmRoles (
    Id UNIQUEIDENTIFIER CONSTRAINT PK_CrmRoles PRIMARY KEY DEFAULT (NEWID()),
    CreatedDate DATETIME2(0) NOT NULL DEFAULT (GETUTCDATE()),
    UpdatedDate DATETIME2(0),
    Name NVARCHAR(100) NOT NULL,
)
CREATE UNIQUE INDEX UIX_CrmRoles ON CrmRoles (Name)

CREATE TABLE CrmRolePermissions (
    CrmRoleId UNIQUEIDENTIFIER NOT NULL 
        CONSTRAINT FK_CrmUsers_CrmUserPermissions FOREIGN KEY REFERENCES CrmUsers (Id),
    PermissionCode CHAR(40) NOT NULL,
    CONSTRAINT PK_CrmRolePermissions PRIMARY KEY (CrmRoleId, PermissionCode),
)
