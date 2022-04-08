CREATE TABLE CrmRolePermissions (
    CrmRoleId UNIQUEIDENTIFIER NOT NULL 
        CONSTRAINT FK_CrmUsers_CrmUserPermissions FOREIGN KEY REFERENCES CrmUsers (Id),
    PermissionCode CHAR(40) NOT NULL,
    CONSTRAINT PK_CrmRolePermissions PRIMARY KEY (CrmRoleId, PermissionCode),
)
