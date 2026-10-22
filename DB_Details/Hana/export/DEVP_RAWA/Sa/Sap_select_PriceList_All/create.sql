CREATE PROCEDURE  "Sap_select_PriceList_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

select 

"OPLN"."ListNum",
"OPLN"."ListName",
"Currency",
"ItemCode",
"Price",
"OUOM"."UomCode",
"ValidFor",
"PrimCurr"
 

 from "ITM1" 
 inner join "OPLN"  on "ITM1"."PriceList"="OPLN"."ListNum"
 inner join "OUOM" on "ITM1"."UomEntry"="OUOM"."UomEntry"
 
 
 
  where  "OPLN"."UpdateDate" >=
      TO_TIMESTAMP(:I_LastUpdateDate, 'YYYY-MM-DD HH24:MI:SS.FF7');



END;