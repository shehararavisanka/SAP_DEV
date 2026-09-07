 Create PROCEDURE  "Sap_selelct_Warehouse_All"
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

from "OWHS"  where "updateDate"  >=  :I_LastUpdateDate;



END;