CREATE PROCEDURE  "Sap_select_Users_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

  select   
 
 
"USER_CODE",
"U_NAME",
"E_Mail",
"Department",
"PortNum",
"Locked"
,"OUDP"."Name" as "DepartmentName"

from  "OUSR"
inner join "OUDP" on "OUSR"."Department"="OUDP"."Code"  where TO_TIMESTAMP(
        TO_VARCHAR("updateDate", 'YYYY-MM-DD') ) >=   TO_VARCHAR( :I_LastUpdateDate, 'YYYY-MM-DD');



END;