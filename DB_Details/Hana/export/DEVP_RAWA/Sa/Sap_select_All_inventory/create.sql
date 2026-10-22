CREATE PROCEDURE  "Sap_select_All_inventory"
 
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN
   
      SELECT T0."ItemCode",T1."WhsCode",COALESCE(T3."DistNumber", '') AS "Batch",
CASE WHEN T3."DistNumber" IS NULL THEN T1."OnHand" ELSE T2."Quantity" END AS "Quantity",
CASE WHEN T3."DistNumber" IS NOT NULL THEN T3."MnfDate" ELSE NULL END AS "Manufacture Date",
CASE WHEN T3."DistNumber" IS NOT NULL THEN T3."ExpDate" ELSE NULL END AS "Expiry Date" 
FROM "OITM" T0 INNER JOIN "OITW" T1 ON T0."ItemCode" = T1."ItemCode"
LEFT JOIN "OBTQ" T2 ON T0."ItemCode" = T2."ItemCode" AND T1."WhsCode" = T2."WhsCode"
LEFT JOIN "OBTN" T3 ON T2."ItemCode" = T3."ItemCode" AND T2."SysNumber" = T3."SysNumber"
WHERE T1."OnHand" <> 0
ORDER BY T0."ItemCode",T1."WhsCode",T3."DistNumber";



END;