 CREATE TABLE dbo.BPMaster
(
    RowID INT IDENTITY(1,1) PRIMARY KEY,

    CardCode NVARCHAR(50) NOT NULL,
    CardName NVARCHAR(200) NULL,
    CardType NVARCHAR(10) NULL,
    GroupCode INT NULL,
    Phone1 NVARCHAR(50) NULL,
    Phone2 NVARCHAR(50) NULL,
    E_Mail NVARCHAR(200) NULL,
    Fax NVARCHAR(50) NULL,
    AddID NVARCHAR(100) NULL,
    RegNum NVARCHAR(100) NULL,
    Notes NVARCHAR(MAX) NULL,

    CreditLine DECIMAL(18,6) NULL,
    DebtLine DECIMAL(18,6) NULL,

    GroupNum INT NULL,

    validFor CHAR(1) NULL,
    validFrom DATETIME NULL,
    validTo DATETIME NULL,

    CreatedDateTime DATETIME2(0) NOT NULL
        CONSTRAINT DF_BPMaster_CreatedDateTime DEFAULT GETDATE(),

    UpdatedDateTime DATETIME2(0) NOT NULL
        CONSTRAINT DF_BPMaster_UpdatedDateTime DEFAULT GETDATE()
);
