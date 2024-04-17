USE SQLTNT;
GO

SET NOCOUNT ON;

DROP TABLE IF EXISTS [dbo].[OrderItems];

CREATE TABLE [dbo].[OrderItems]
(
  [OrderItems_ID]              [INT]IDENTITY(1,1)              NOT NULL
    CONSTRAINT pk_OrderItems_ID PRIMARY KEY CLUSTERED
 ,[Order]                      [SYSNAME]                       NOT NULL
 ,[Item]                       [SYSNAME]                       NOT NULL
 ,[qty]                        [INT]                           NOT NULL
 ,[Cost]                       [FLOAT]                         NOT NULL
)

INSERT OrderItems
(      [Order],  [Item],   [qty], [Cost])
SELECT 'Order1', 'Widgit', 3,     15.75
UNION
SELECT 'Order1', 'YoTo',   1,     7.95
UNION
SELECT 'Order2', 'Widgit', 1,     5.25
UNION
SELECT 'Order3', 'Widgit', 1,     5.25
UNION
SELECT 'Order3', 'YoTo',   5,     39.75
UNION
SELECT 'Order3', 'YUMYUM', 1,     3.52
UNION
SELECT 'Order4', 'YUMYUM', 2,     7.04;

/* Declare Variables */
DECLARE @v_Order               [SYSNAME]                       = 'Order2'
       ,@v_Total               [FLOAT]
	   ,@v_SQL                 [NVARCHAR](MAX);

SELECT @v_SQL                  = N'
  SELECT @d_TotalPrice         = SUM([Cost]) OVER(PARTITION BY [Order])
    FROM [OrderItems]
   WHERE [Order]               = @d_Order
   ORDER BY [Order]
  OFFSET 0 ROWS FETCH FIRST 1 ROW ONLY;';

EXEC sp_executesql 
  @stmt                        = @v_SQL
 ,@params                      = N'@d_Order AS SYSNAME, @d_TotalPrice AS FLOAT OUT'
 ,@d_Order                     = @v_Order          -- Input param
 ,@d_TotalPrice                = @v_Total OUTPUT;  -- output param

SELECT @v_Total;
