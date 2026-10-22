CREATE PROCEDURE  "Sap_select_CompanyDetails_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

  select   
 
    "CompnyName",
    "Street",
    "StreetNo",
    "Block",
    "Building",
    "ZipCode",
    "City",
   OCRY."Name" as "Country",
    "Phone1",
    "Phone2",
    "Fax",
    "E_Mail",
    "FreeZoneNo",
    "TaxIdNum"

from  "OADM" A 
inner join "ADM1" b on A."Code"=B."Code" 
inner join OCRY on B."Country"=OCRY."Code"   where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD')  
      ) >=   TO_VARCHAR( :I_LastUpdateDate, 'YYYY-MM-DD') ;



END;