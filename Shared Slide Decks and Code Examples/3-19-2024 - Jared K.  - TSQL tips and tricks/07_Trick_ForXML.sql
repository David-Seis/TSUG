USE SQLTNT;
GO

SET NOCOUNT ON;

CREATE TABLE #xmldemo
(
  [xmldemo_id]                 [INT]IDENTITY(1,1)              NOT NULL
 ,[Value]                      [SYSNAME]                       NOT NULL
);

/* Insert #xmldemo */
INSERT #xmldemo
([Value])
SELECT 'A1'
UNION
SELECT 'B1,B2'
UNION
SELECT 'C1,C2,C3'
UNION
SELECT 'D1,D2,D3,D4';

SELECT * FROM #xmldemo

/* Select the data out using XML CROSS APPLY */
SELECT a.[xmldemo_id]
      ,a.[Value]
	  ,b.[SplitData]
  FROM (SELECT *
              ,CAST('<X>'+REPLACE([Value],',','</X><X>')+'</X>' AS XML) AS xmlfilter 
		  FROM #xmldemo)                                                       a
  CROSS APPLY (SELECT aValue.X.value('.','VARCHAR(50)')        AS [SplitData] 
                 FROM a.[xmlfilter].nodes('X')                 AS aValue(X))   b;



DROP TABLE #xmldemo;
GO



