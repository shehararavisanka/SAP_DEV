CREATE OR REPLACE PROCEDURE "dbo"."Sap_select_All_MasterTables"
(
    IN I_LastUpdateDate TIMESTAMP
)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN

    SELECT *
    FROM "ORDR"
    WHERE "LastUpdateDate" > :I_LastUpdateDate;

END;



CALL "dbo"."Sap_select_All_MasterTables"
(
    '2026-08-21 00:00:00'
);

