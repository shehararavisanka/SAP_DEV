CREATE PROCEDURE  "Sap_select_ARInvoice_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

SELECT
    T0."DocEntry",
    T0."DocNum",
    T0."DocType",
    T0."CANCELED",
    T0."DocStatus",
    T0."ObjType",
    T0."DocDate",
    T0."DocDueDate",
    T0."CardCode",
    T0."CardName",
    T0."NumAtCard",
    T0."Address",
    T0."VatSum",
    T0."VatSumFC",
    T0."DiscSum",
    T0."DiscSumFC",
    T0."DocCur",
    T0."DocRate",
    T0."DocTotal",
    T0."DocTotalFC",
    T0."GrosProfit",
    T0."GrosProfFC",
    T0."Comments",
    T0."SlpCode",
    T0."TaxDate",
    T0."UserSign",
    T0."TotalExpns",
    T0."Project",
    T0."PayToCode",
     T0."U_VZ_BL" AS "VZ_BL",
    T0."U_VZ_PurTerm" AS "VZ_PurTerm",
    T0."U_VZ_DelTerm" AS "VZ_DelTerm",
    T0."U_VZ_PayTerm" AS "VZ_PayTerm",
    T0."U_VZ_SPL_TERM" AS "VZ_SPL_TERM",
    T0."GroupNum",
    T0."TrnspCode",
    0 as "OrgAmount",
    0 as "OrgAmountFC"
FROM "OINV" T0 




where TO_TIMESTAMP(
        TO_VARCHAR(T0."UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR(T0."UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate;



END;