CREATE PROCEDURE "Sap_select_IncomingPayment_Details_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

    SELECT
        T0."DocNum",
        T0."DueDate",
        T0."CheckNum",
        T0."BankCode",
        T0."Branch",
        T0."AcctNum",
        T0."Details",
        T0."CheckSum",
        T0."Currency",
        T0."CheckAct",
        T0."BnkActKey",
        T0."ManualChk"

    FROM RCT1 T0
    INNER JOIN ORCT T1
        ON T0."DocNum" = T1."DocNum"

    WHERE TO_TIMESTAMP(
        TO_VARCHAR(T1."UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR(T1."UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
    ) >= :I_LastUpdateDate;

END;