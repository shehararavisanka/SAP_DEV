CREATE PROCEDURE  "Sap_select_Currency_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

  select   
 
"CurrCode",
"CurrName"
   
   from "OCRN" ; /* where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate;*/



END;