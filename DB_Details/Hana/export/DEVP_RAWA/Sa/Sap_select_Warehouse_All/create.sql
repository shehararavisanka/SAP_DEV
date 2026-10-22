CREATE PROCEDURE  "Sap_select_Warehouse_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

select 

"WhsCode",
"WhsName",
"Inactive",
"U_VZ_Van"

from "OWHS"  where TO_VARCHAR("updateDate", 'YYYY-MM-DD')   >= TO_VARCHAR( :I_LastUpdateDate, 'YYYY-MM-DD') ;



END;