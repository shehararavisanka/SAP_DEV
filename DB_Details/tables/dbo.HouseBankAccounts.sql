  CREATE TABLE HouseBankAccounts
(
    BankCode        NVARCHAR(50)  NOT NULL,
    BankName        NVARCHAR(200) NULL,
     

    CreatedDateTime DATETIME2(0) NOT NULL
        CONSTRAINT DF_HouseBankAccounts_CreatedDateTime
        DEFAULT GETDATE(),

    UpdatedDateTime DATETIME2(0) NOT NULL
        CONSTRAINT DF_HouseBankAccounts_UpdatedDateTime
        DEFAULT GETDATE(),

    CONSTRAINT PK_HouseBankAccounts PRIMARY KEY (BankCode)


)