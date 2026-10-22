CREATE PROCEDURE  "Sap_select_BPMaster_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

select   
 
"OCRD"."CardCode",
"CardName",
"CardType",
"OCRD"."GroupCode" ,
"Phone1",
"Phone2",
"E_Mail",
"Fax",
"AddID",
"RegNum",
"Notes",
"CreditLine",
"DebtLine",
"OCRD"."GroupNum",
"validFor",
"validFrom",
"validTo",
"SlpCode",
"OCRD"."ListNum",
"GroupName",
OCTG."PymntGroup",
A."CurrBalance"

from "OCRD"
inner join "OCRG" on "OCRD"."GroupCode"="OCRG"."GroupCode"
inner join OCTG on "OCRD"."GroupNum"=OCTG."GroupNum"

left join (
SELECT T1."CardCode", SUM(T0."Debit")- SUM(T0."Credit") AS "CurrBalance" FROM 

JDT1 T0 INNER JOIN OCRD T1 ON T0."ShortName"=T1."CardCode" GROUP BY T1."CardCode"
) A on "OCRD"."CardCode"=A."CardCode"

  where "OCRD"."CardType"='C' and TO_TIMESTAMP(
        TO_VARCHAR("OCRD"."UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("OCRD"."UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate;



END;