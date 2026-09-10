 
 CREATE TABLE ItemMaster
(
    ItemCode        NVARCHAR(50)  NOT NULL,
    ItemName        NVARCHAR(200) NULL,
    FrgnName        NVARCHAR(200) NULL,
    ItmsGrpCod      INT           NULL,
    PrchseItem      CHAR(1)       NULL,
    SellItem        CHAR(1)       NULL,
    InvntItem       CHAR(1)       NULL,
    UgpCode         INT           NULL,
    SalUnitMsr      NVARCHAR(100) NULL,
    U_VZ_SubGroup   NVARCHAR(100) NULL,
    U_VZ_SubGroup2  NVARCHAR(100) NULL,
    ManBtchNum      CHAR(1)       NULL,
    ManSerNum       CHAR(1)       NULL,
    validFor        CHAR(1)       NULL,
    validFrom       DATE          NULL,
    validTo         DATE          NULL,

    CreatedDateTime DATETIME2(0) NOT NULL
        CONSTRAINT DF_ItemMaster_CreatedDateTime
        DEFAULT GETDATE(),

    UpdatedDateTime DATETIME2(0) NOT NULL
        CONSTRAINT DF_ItemMaster_UpdatedDateTime
        DEFAULT GETDATE(),

    CONSTRAINT PK_ItemMaster PRIMARY KEY (ItemCode)
);