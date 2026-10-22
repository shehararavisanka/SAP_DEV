CREATE PROCEDURE "Sap_select_IncomingPayment_details1_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

    SELECT
        T0."DocNum",
        T0."DocEntry",
        T0."InvType",
        T0."SumApplied",
        T0."AppliedFC"

    FROM RCT2 T0
    INNER JOIN ORCT T1
        ON T0."DocNum" = T1."DocEntry"

    WHERE TO_TIMESTAMP(
        TO_VARCHAR(T1."UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR(T1."UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
    ) >= :I_LastUpdateDate;
    
    
    end;