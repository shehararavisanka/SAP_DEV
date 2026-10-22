CREATE PROCEDURE "Sap_select_SalesQuotation_Details_All"
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
        T0."Dscription",
        T0."Quantity",
        T0."ShipDate",
        T0."Price",
        T0."DiscPrcnt",
        T0."LineTotal",
        T0."TotalFrgn",
        T0."WhsCode",
        T0."AcctCode",
        T0."Project",
        T0."OcrCode",
        T0."CogsOcrCo2",
        T0."CogsOcrCo3",
        T0."CogsOcrCo4",
        T0."CogsOcrCo5",
        T0."GrssProfit",
        T0."GrssProfFC",
        T0."INMPrice",
        T0."InvQty",
        T0."LineStatus",
        T0."BaseType",
        T0."BaseEntry",
        T0."BaseLine",
        T0."PriceBefDi",
        T0."UomCode",
        T0."UomCode2",
        T0."VatGroup",
        T0."VatSum",
        T0."VatSumFrgn"

    FROM QUT1 T0 
    inner join OQUT T1 on T0."DocEntry"=T1."DocEntry"

    WHERE TO_TIMESTAMP(
        TO_VARCHAR(T1."UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR(T1."UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
    ) >= :I_LastUpdateDate;

END;