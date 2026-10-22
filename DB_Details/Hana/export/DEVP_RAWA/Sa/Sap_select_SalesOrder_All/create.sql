CREATE PROCEDURE  "Sap_select_SalesOrder_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

SELECT
    "DocEntry",
    "DocNum",
    "DocType",
    "CANCELED",
    "DocStatus",
    "ObjType",
    "DocDate",
    "DocDueDate",
    "CardCode",
    "CardName" AS "CarsName",
    "NumAtCard",
    "Address",
    "VatSum",
    "VatSumFC",
    "DiscSum",
    "DiscSumFC",
    "DocCur",
    "DocRate",
    "DocTotal",
    "DocTotalFC",
    "GrosProfit",
    "GrosProfFC",
    "Comments",
    "SlpCode",
    "TaxDate",
    "UserSign",
    "TotalExpns",
    "Project",
    "PayToCode",
    "U_VZ_BL" AS "VZ_BL",
    "U_VZ_PurTerm" AS "VZ_PurTerm",
    "U_VZ_DelTerm" AS "VZ_DelTerm",
    "U_VZ_PayTerm" AS "VZ_PayTerm",
    "U_VZ_SPL_TERM" AS "VZ_SPL_TERM",
    "GroupNum",
    "TrnspCode"
FROM "ORDR"


where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate;



END;