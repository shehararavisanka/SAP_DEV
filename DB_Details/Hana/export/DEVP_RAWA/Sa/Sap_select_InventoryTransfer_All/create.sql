CREATE PROCEDURE  "Sap_select_InventoryTransfer_All"
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
    T0."ObjType",
    T0."CANCELED",
    T0."DocStatus",
    T0."DocDate",
    T0."SlpCode",
    T0."Filler" AS "FromWarehouse",
    T0."ToWhsCode" AS "ToWarehouse"
FROM OWTR T0

where TO_TIMESTAMP(
        TO_VARCHAR(T0."UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR(T0."UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate;



END;