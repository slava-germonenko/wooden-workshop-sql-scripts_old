CREATE TABLE PermissionCodes (
    Code CHAR(40) NOT NULL,
)

CREATE UNIQUE INDEX UIX_PermissionCodes_Code ON PermissionCodes (Code)
