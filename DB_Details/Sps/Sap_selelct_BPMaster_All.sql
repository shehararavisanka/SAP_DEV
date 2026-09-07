 
 Create PROCEDURE  "Sap_selelct_BPMaster_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

select 
 
"CardCode",
"CardName",
"CardType",
"GroupCode",
"Phone1",
"Phone2",
"E_Mail",
"Fax",
"AddID",
"RegNum",
"Notes",
"CreditLine",
"DebtLine",
"GroupNum",
"validFor",
"validFrom",
"validTo"

from "OCRD"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate



END;