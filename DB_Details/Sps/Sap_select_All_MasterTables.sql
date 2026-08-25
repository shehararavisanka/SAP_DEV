 Alter PROCEDURE  "Sap_select_All_MasterTables"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN
   --load id 1 for ORDR
    SELECT top 1  1 as  "LoadControlID"  FROM "OCRD"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate
      
      
     union all
     
      SELECT top 1  2 as  "LoadControlID"  FROM "OITM"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate
      
      
        union all
     
      SELECT top 1  3 as  "LoadControlID"  FROM "OWHS" where  "updateDate"  >=  :I_LastUpdateDate
      
      
         union all
     
      SELECT top 1  4 as  "LoadControlID"  FROM "DSC1"  where  "UpdateDate"  >=  :I_LastUpdateDate


       union all
     
      SELECT top 1  5 as  "LoadControlID"  FROM "OPRC"  where  "UpdateDate"  >=  :I_LastUpdateDate
      
      
        union all
     
      SELECT top 1  6 as  "LoadControlID"  FROM "OSLP"  --where  "UpdateDate"  >=  :I_LastUpdateDate

  union all
     
      SELECT top 1  7 as  "LoadControlID"  FROM "OUSR"   where  "updateDate"  >=  :I_LastUpdateDate  ;
END;

 