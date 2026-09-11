CREATE TABLE Users
(
    USER_CODE NVARCHAR(50) NOT NULL,
    U_NAME NVARCHAR(100) NULL,
    E_Mail NVARCHAR(254) NULL,
    Department NVARCHAR(100) NULL,
    PortNum INT NULL,
    Locked CHAR(1) NULL,

    CreatedDateTime DATETIME2(0) NOT NULL
        CONSTRAINT DF_Users_CreatedDateTime
        DEFAULT GETDATE(),

    UpdatedDateTime DATETIME2(0) NOT NULL
        CONSTRAINT DF_Users_UpdatedDateTime
        DEFAULT GETDATE(),

    CONSTRAINT PK_Users PRIMARY KEY (USER_CODE)
);
