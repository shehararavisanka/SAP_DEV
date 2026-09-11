  
 Create PROCEDURE  "Sap_select_ItemMaster_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

select 

"ItemCode",
"ItemName",
"FrgnName",
"ItmsGrpCod",
"PrchseItem",
"SellItem",
"InvntItem",
--"UgpCode",
"U_VZ_SubGroup",
"U_VZ_SubGroup2",
"ManBtchNum",
"ManSerNum",
"validFor",
"validFrom",
"validTo"

from "OITM"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate;



END;