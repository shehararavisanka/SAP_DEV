CREATE PROCEDURE  "Sap_select_UoMGroup_All"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

 

SELECT T0."UgpCode", T0."UgpName", T2."UomCode" "BaseUoM", T3."UomCode" "AltCode", T1."BaseQty", T1."AltQty", T1."IsActive" 
FROM OUGP T0  INNER JOIN UGP1 T1 ON T0."UgpEntry" = T1."UgpEntry" 
INNER JOIN OUOM T2 ON T0."BaseUom" = T2."UomEntry"
INNER JOIN OUOM T3 ON T0."BaseUom" = T3."UomEntry"
  
 
 where  TO_VARCHAR(T2."UpdateDate", 'YYYY-MM-DD') >=   TO_VARCHAR( :I_LastUpdateDate, 'YYYY-MM-DD');



END;