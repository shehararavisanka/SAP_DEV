CREATE PROCEDURE "Sap_select_InventoryTransferRequest_Details_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

    SELECT
        T0."DocEntry",
        T0."LineNum",
        T0."ItemCode",
        T0."Quantity",
        T0."UomCode"

    FROM WTQ1 T0
    INNER JOIN OWTQ T1
        ON T0."DocEntry" = T1."DocEntry"

    WHERE TO_TIMESTAMP(
        TO_VARCHAR(T1."UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR(T1."UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
    ) >= :I_LastUpdateDate order by T0."DocEntry";

END;