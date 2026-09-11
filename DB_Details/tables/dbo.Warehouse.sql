  CREATE TABLE Warehouse
(
    WhsCode        NVARCHAR(50)  NOT NULL,
    WhsName        NVARCHAR(200) NULL,
    FrgnName        int NULL,
    U_VZ_Van NVARCHAR(200) NULL,

    CreatedDateTime DATETIME2(0) NOT NULL
        CONSTRAINT DF_Warehouse_CreatedDateTime
        DEFAULT GETDATE(),

    UpdatedDateTime DATETIME2(0) NOT NULL
        CONSTRAINT DF_Warehouse_UpdatedDateTime
        DEFAULT GETDATE(),

    CONSTRAINT PK_Warehouse PRIMARY KEY (WhsCode)


)