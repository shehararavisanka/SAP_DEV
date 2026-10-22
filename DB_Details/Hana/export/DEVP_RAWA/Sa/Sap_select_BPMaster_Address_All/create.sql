CREATE PROCEDURE  "Sap_select_BPMaster_Address_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

select   
 
"CRD1"."CardCode",
"AdresType",
"CRD1"."Address",
"CRD1"."Address2",
"CRD1"."Address3",
OCRY."Name"  "Country"


from "CRD1" 
inner join OCRY on "CRD1" ."Country"=OCRY."Code"
inner join "OCRD" on "CRD1"."CardCode"="OCRD"."CardCode"

  where  "OCRD"."CardType"='C' and  TO_TIMESTAMP(
        TO_VARCHAR("CRD1"."CreateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("CRD1"."CreateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate;



END;