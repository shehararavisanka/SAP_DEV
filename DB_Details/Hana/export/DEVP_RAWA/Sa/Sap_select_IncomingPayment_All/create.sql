CREATE PROCEDURE  "Sap_select_IncomingPayment_All"
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
    T0."Canceled",
    T0."DocDate",
    T0."DocDueDate",
    T0."TaxDate",
    T0."CardCode",
    T0."CardName",
    T0."CashAcct",
    T0."CashSum",
    T0."CashSumFC",
    T0."CheckAcct",
    T0."CheckSum",
    T0."CheckSumFC",
    T0."TrsfrAcct",
    T0."TrsfrSum",
    T0."TrsfrSumFC",
    T0."TrsfrDate",
    T0."TrsfrRef",
    T0."PayNoDoc",
    T0."NoDocSum",
    T0."NoDocSumFC",
    T0."BcgSum",
    T0."BcgSumFC",
    T0."DocCurr",
    T0."DocRate",
    T0."DocTotal",
    T0."DocTotalFC",
    T0."CounterRef",
    T0."Comments"
FROM ORCT T0




where TO_TIMESTAMP(
        TO_VARCHAR(T0."UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR(T0."UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate;



END;