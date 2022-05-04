CREATE TABLE InvitationTypes (
    Code INT CONSTRAINT PK_InvitationTypes PRIMARY KEY,
    Description NVARCHAR(200),
)

INSERT INTO InvitationTypes (Code, Description) VALUES (1, 'CRM User Invitations')
