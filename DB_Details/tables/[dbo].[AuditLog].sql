 CREATE TABLE [dbo].[AuditLog]
(
    [AuditLogID] BIGINT IDENTITY(1,1) NOT NULL,
    [TableName] NVARCHAR(256) NOT NULL,
    [RecordID] NVARCHAR(100) NULL,
    [Action] NVARCHAR(20) NOT NULL,
    [ColumnName] NVARCHAR(256) NULL,
    [OldValue] NVARCHAR(5000) NULL,
    [NewValue] NVARCHAR(5000) NULL,
    [ChangedBy] NVARCHAR(100) NULL,
    [ChangedDate] DATETIME2(7) NOT NULL CONSTRAINT [DF_AuditLog_ChangedDate] DEFAULT (SYSDATETIME()),
    [SourceApplication] NVARCHAR(100) NULL,
    [IPAddress] NVARCHAR(50) NULL,
    [Remarks] NVARCHAR(1000) NULL,
    CONSTRAINT [PK_AuditLog]
        PRIMARY KEY CLUSTERED ([AuditLogID])
);
