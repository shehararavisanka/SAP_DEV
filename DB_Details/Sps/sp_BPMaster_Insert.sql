  

 alter   PROCEDURE  [dbo].[sp_BPMaster_Insert]
(
    @CardCode NVARCHAR(50),
    @CardName NVARCHAR(200) = NULL,
    @CardType NVARCHAR(10) = NULL,
    @GroupCode INT = NULL,
    @Phone1 NVARCHAR(50) = NULL,
    @Phone2 NVARCHAR(50) = NULL,
    @E_Mail NVARCHAR(200) = NULL,
    @Fax NVARCHAR(50) = NULL,
    @AddID NVARCHAR(100) = NULL,
    @RegNum NVARCHAR(100) = NULL,
    @Notes NVARCHAR(MAX) = NULL,
    @CreditLine DECIMAL(18,6) = NULL,
    @DebtLine DECIMAL(18,6) = NULL,
    @GroupNum INT = NULL,
    @validFor CHAR(1) = NULL,
    @validFrom DATETIME = NULL,
    @validTo DATETIME = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

     -- Check if CardCode already exists
    IF EXISTS
    (
        SELECT 1
        FROM dbo.BPMaster
        WHERE CardCode = @CardCode
    )
    BEGIN
        -- Update existing record
        UPDATE dbo.BPMaster
        SET
            CardName = @CardName,
            CardType = @CardType,
            GroupCode = @GroupCode,
            Phone1 = @Phone1,
            Phone2 = @Phone2,
            E_Mail = @E_Mail,
            Fax = @Fax,
            AddID = @AddID,
            RegNum = @RegNum,
            Notes = @Notes,
            CreditLine = @CreditLine,
            DebtLine = @DebtLine,
            GroupNum = @GroupNum,
            validFor = @validFor,
            validFrom = @validFrom,
            validTo = @validTo,
            UpdatedDateTime = GETDATE()
        WHERE CardCode = @CardCode;

        -- Return existing RowID
        SELECT RowID
        FROM dbo.BPMaster
        WHERE CardCode = @CardCode;
    END
    ELSE
    BEGIN
        -- Insert new record
        INSERT INTO dbo.BPMaster
        (
            CardCode,
            CardName,
            CardType,
            GroupCode,
            Phone1,
            Phone2,
            E_Mail,
            Fax,
            AddID,
            RegNum,
            Notes,
            CreditLine,
            DebtLine,
            GroupNum,
            validFor,
            validFrom,
            validTo
        )
        VALUES
        (
            @CardCode,
            @CardName,
            @CardType,
            @GroupCode,
            @Phone1,
            @Phone2,
            @E_Mail,
            @Fax,
            @AddID,
            @RegNum,
            @Notes,
            @CreditLine,
            @DebtLine,
            @GroupNum,
            @validFor,
            @validFrom,
            @validTo
        );

        -- Return newly created RowID
        SELECT CAST(SCOPE_IDENTITY() AS INT) AS RowID;
    END
END;
GO


