 CREATE TABLE SalesEmployees
(
    SlpCode INT NOT NULL,
    SlpName NVARCHAR(100) NULL,
    Memo NVARCHAR(500) NULL,
    Active CHAR(1) NULL,
    Telephone NVARCHAR(50) NULL,
    Mobil NVARCHAR(50) NULL,
    Fax NVARCHAR(50) NULL,
    Email NVARCHAR(254) NULL,

    CreatedDateTime DATETIME2(0) NOT NULL
        CONSTRAINT DF_SalesEmployees_CreatedDateTime
        DEFAULT GETDATE(),

    UpdatedDateTime DATETIME2(0) NOT NULL
        CONSTRAINT DF_SalesEmployees_UpdatedDateTime
        DEFAULT GETDATE(),

    CONSTRAINT PK_SalesEmployees PRIMARY KEY (SlpCode)
);