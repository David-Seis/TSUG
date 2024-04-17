USE SQLTNT;
GO

SET NOCOUNT ON;

SELECT * FROM [dbo].[DemoServer];

WITH CTE_delete AS
(
    SELECT RN = ROW_NUMBER() OVER(PARTITION BY [Dim_Server_ID] ORDER BY(SELECT NULL))
    FROM [dbo].[DemoServer]
)
DELETE FROM CTE_delete
WHERE RN > 1;

SELECT * FROM [dbo].[DemoServer];
GO