CREATE PROCEDURE  "Sap_select_ItemMaster_All"
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
"OITM"."ItmsGrpCod",
"ItmsGrpNam",
"PrchseItem",
"SellItem",
"InvntItem",
"UgpCode" as "UomCode",
"UgpName" as "UomName",
"SalUnitMsr",
"U_VZ_SubGroup",
"U_VZ_SubGroup2",
"ManBtchNum",
"ManSerNum",
"validFor",
"validFrom",
"validTo"

from "OITM"
inner join  "OITB" on  "OITM"."ItmsGrpCod"="OITB"."ItmsGrpCod"
inner join  "OUGP" on  "OITM"."UgpEntry"="OUGP"."UgpEntry"

 where TO_TIMESTAMP(
        TO_VARCHAR("OITM"."UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("OITM"."UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate;



END;