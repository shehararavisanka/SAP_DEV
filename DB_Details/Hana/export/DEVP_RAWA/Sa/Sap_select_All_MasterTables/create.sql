CREATE  PROCEDURE  "Sap_select_All_MasterTables"
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
     
      SELECT top 1  3 as  "LoadControlID"  FROM "OWHS" where  TO_VARCHAR("updateDate", 'YYYY-MM-DD')   >= TO_VARCHAR( :I_LastUpdateDate, 'YYYY-MM-DD')
      
      
         union all
     
      SELECT top 1  4 as  "LoadControlID"  FROM "ODSC"  --where  "UpdateDate"  >=  :I_LastUpdateDate


       union all
     
      SELECT top 1  5 as  "LoadControlID"  FROM "OSPP"  where
       TO_VARCHAR(  case when "OSPP"."UpdateDate" is null then "OSPP"."CreateDate" else "OSPP"."UpdateDate" end )   >= TO_VARCHAR( :I_LastUpdateDate, 'YYYY-MM-DD')
      
      
        union all
     
      SELECT top 1  6 as  "LoadControlID"  FROM "OSLP"  --where  "UpdateDate"  >=  :I_LastUpdateDate

  union all
     
      SELECT top 1  7 as  "LoadControlID"  FROM "OUSR"   where  TO_VARCHAR("updateDate", 'YYYY-MM-DD')   >= TO_VARCHAR( :I_LastUpdateDate, 'YYYY-MM-DD')  
      
        union all
      
      SELECT top 1  8 as  "LoadControlID" from "OADM"   where  TO_VARCHAR("UpdateDate", 'YYYY-MM-DD')   >= TO_VARCHAR( :I_LastUpdateDate, 'YYYY-MM-DD') 

   union all
      
      SELECT top 1  9 as  "LoadControlID" from "OCRN"   --where  "UpdateDate"  >=  :I_LastUpdateDate  ;


  union all
      
      SELECT top 1  10 as  "LoadControlID" from "OPLN"  where  TO_VARCHAR("UpdateDate", 'YYYY-MM-DD')   >= TO_VARCHAR( :I_LastUpdateDate, 'YYYY-MM-DD')  
      
      
        union all
      
      SELECT top 1  11 as  "LoadControlID" from "OUGP"  where  TO_VARCHAR("UpdateDate", 'YYYY-MM-DD')   >= TO_VARCHAR( :I_LastUpdateDate, 'YYYY-MM-DD')  
      
         union all
        SELECT top 1  12 as  "LoadControlID"  FROM "OQUT"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
            union all
        SELECT top 1  13 as  "LoadControlID"  FROM "ORDR"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
      
              union all
        SELECT top 1  14 as  "LoadControlID"  FROM "ODLN"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
              union all
        SELECT top 1  15 as  "LoadControlID"  FROM "ORDN"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
              union all
        SELECT top 1  16 as  "LoadControlID"  FROM "OINV"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
              union all
        SELECT top 1  17 as  "LoadControlID"  FROM "ORIN"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate
      
           union all
        SELECT top 1  18 as  "LoadControlID"  FROM "OCPR"  where TO_TIMESTAMP(
        TO_VARCHAR("updateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("updateTime"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate    
      
       union all
        SELECT top 1  19 as  "LoadControlID"  FROM "OWTR"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
         union all
         
        SELECT top 1  21 as  "LoadControlID"  FROM "OWTQ"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
      
               union all
        SELECT top 1  22 as  "LoadControlID"  FROM "OQUT"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
            union all
        SELECT top 1  23 as  "LoadControlID"  FROM "ORDR"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
      
              union all
        SELECT top 1  24 as  "LoadControlID"  FROM "ODLN"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
              union all
        SELECT top 1  25 as  "LoadControlID"  FROM "ORDN"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
              union all
        SELECT top 1  26 as  "LoadControlID"  FROM "OINV"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
              union all
        SELECT top 1  27 as  "LoadControlID"  FROM "ORIN"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate
      
           union all
        SELECT top 1  28 as  "LoadControlID"  FROM "OCPR"  where TO_TIMESTAMP(
        TO_VARCHAR("updateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("updateTime"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate    
      
       union all
        SELECT top 1  29 as  "LoadControlID"  FROM "OWTR"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
         union all
         
        SELECT top 1  30 as  "LoadControlID"  FROM "OWTQ"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
      
      
      
                  union all
        SELECT top 1  31 as  "LoadControlID"  FROM "ODLN"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
              union all
        SELECT top 1  32 as  "LoadControlID"  FROM "ORDN"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
              union all
        SELECT top 1 33 as  "LoadControlID"  FROM "OINV"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
              union all
        SELECT top 1  34 as  "LoadControlID"  FROM "ORIN"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate
      
           union all
        SELECT top 1  35 as  "LoadControlID"  FROM "OCPR"  where TO_TIMESTAMP(
        TO_VARCHAR("updateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("updateTime"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate    
      
       union all
        SELECT top 1  36 as  "LoadControlID"  FROM "OWTR"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
         union all
         
        SELECT top 1  37 as  "LoadControlID"  FROM "OWTQ"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate 
      
        union all
      
       SELECT top 1  38 as  "LoadControlID"  FROM "CRD1"  where TO_TIMESTAMP(
        TO_VARCHAR("CreateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("CreateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate
      
        union all
        
       SELECT top 1  39 as  "LoadControlID"  FROM "OCPR"  where TO_TIMESTAMP(
        TO_VARCHAR("updateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("updateTime"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate
      
        union all
      
        SELECT top 1  40 as  "LoadControlID"  FROM "OCRD"  where TO_TIMESTAMP(
        TO_VARCHAR("UpdateDate", 'YYYY-MM-DD') ||
        LPAD(TO_VARCHAR("UpdateTS"), 6, '0'),
        'YYYY-MM-DDHH24MISS'
      ) >=   :I_LastUpdateDate
      
      
          ;
      
END;