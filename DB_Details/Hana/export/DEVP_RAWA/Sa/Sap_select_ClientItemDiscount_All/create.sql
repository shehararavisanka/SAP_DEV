CREATE PROCEDURE  "Sap_select_ClientItemDiscount_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

  
 SELECT
    "OSPP"."ItemCode",
    "OSPP"."CardCode",
    "OSPP"."Price",
    "OSPP"."Currency",
    "OSPP"."Discount",
  OITM."SalUnitMsr",
    "OSPP"."Valid"  
    
    
FROM "OSPP"
left join OITM on "OSPP"."ItemCode"=OITM."ItemCode"  
where  TO_VARCHAR( case when "OSPP"."UpdateDate" is null then "OSPP"."CreateDate" else "OSPP"."UpdateDate" end , 'YYYY-MM-DD') >=  
 TO_VARCHAR(:I_LastUpdateDate, 'YYYY-MM-DD'); 


END;