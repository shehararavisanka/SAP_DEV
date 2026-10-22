CREATE PROCEDURE  "Sap_select_BPMaster_ContactPerson_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

select   
 
"CntctCode",
"CardCode",
"Name",
OHPS."name" as "Position",
"Address",
"Tel1",
"Tel2",
"Fax",
"E_MailL",
"Active",
"Title",
"FirstName",
"MiddleName",
"LastName"


from "OCPR" 

left join OHPS on  "OCPR"."Position"=OHPS."posID"

  where TO_TIMESTAMP(
        TO_VARCHAR("updateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("updateTime"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate;



END;