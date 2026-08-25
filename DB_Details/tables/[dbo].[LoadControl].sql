CREATE TABLE [dbo].[LoadControl]
(
    [LoadControlID] BIGINT IDENTITY(1,1) NOT NULL,
    [SchemaName] NVARCHAR(256) NOT NULL,
    [SourceTable] NVARCHAR(256) NOT NULL,
    [TargetTable] NVARCHAR(256) NOT NULL,
    [Activated] BIT NOT NULL CONSTRAINT [DF_LoadControl_Activated] DEFAULT (1),
    [NewRecords] BIT NOT NULL CONSTRAINT [DF_LoadControl_Activated] DEFAULT (0),
    [LoadType] NVARCHAR(50) NULL,
    [LoadStatus] NVARCHAR(50) NULL,
    [LastLoadDate] DATETIME2(7) NULL,
    [LastLoadStartTime] DATETIME2(7) NULL,
    [LastLoadEndTime] DATETIME2(7) NULL,
    [LastLoadMessage] NVARCHAR(500) NULL,
    [CreatedDate] DATETIME2(7) NOT NULL CONSTRAINT [DF_LoadControl_CreatedDate] DEFAULT (SYSDATETIME()),
    [CreatedBy] NVARCHAR(100) NULL,
    [ModifiedDate] DATETIME2(7) NULL,
    [ModifiedBy] NVARCHAR(100) NULL,
    CONSTRAINT [PK_LoadControl]
        PRIMARY KEY CLUSTERED ([LoadControlID])
);


INSERT INTO [dbo].[LoadControl]
(
    [SchemaName],
    [SourceTable],
    [TargetTable],
    [Activated],
    [NewRecords],
    [LoadType],
    [LoadStatus],
    [LastLoadDate],
    [LastLoadStartTime],
    [LastLoadEndTime],
    [LastLoadMessage],
    [CreatedBy],
    [ModifiedDate],
    [ModifiedBy]
)
VALUES
('dbo', 'BPMaster',          'BPMaster',        1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('dbo', 'ItemMaster',       'ItemMaster',       1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('dbo', 'Warehouse',        'Warehouse',        1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('dbo', 'HouseBankAccounts','HouseBankAccounts',1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('dbo', 'CostCenter',       'CostCenter',       1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('dbo', 'SalesEmployees',   'SalesEmployees',   1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('dbo', 'Users',            'Users',            1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
