  Create PROCEDURE  "Sap_select_SalesEmployees_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

select 

"SlpCode",
"SlpName",
"Memo",
"Active",
"Telephone",
"Mobil",
"Fax",
"Email"

from "OSLP"  where "updateDate"  >=  :I_LastUpdateDate;



END;