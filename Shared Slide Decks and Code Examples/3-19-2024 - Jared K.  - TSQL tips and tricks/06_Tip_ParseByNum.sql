USE SQLTNT;
GO

SET NOCOUNT ON;

DECLARE @v_a                   [NVARCHAR](255);

SELECT @v_a                    = '1,3,5,7,9,14,36,395';




---------------------------------------old way-------------------------------------------------------
WHILE LEN(@v_a) > 0
BEGIN

  SELECT SUBSTRING(@v_a, 1, CHARINDEX(',', @v_a + ',') -1);
  SELECT @v_a = LTRIM(RTRIM(SUBSTRING(@v_a, CHARINDEX(',', @v_a + ',') + 1, LEN(@v_a))))

END;
GO







-------------------------------------New Way---------------------------------------------------------

DECLARE @v_a                   [NVARCHAR](255);

SELECT @v_a                    = '1,3,5,7,9,14,36,395';

SELECT [Number]
  FROM [dbo].[Numbers]
 WHERE CHARINDEX(',' + CONVERT([NVARCHAR](12), [Number]) + ',', ',' + @v_a + ',') > 0
 ORDER BY [Number];
GO














-------------------------------------BreakDown---------------------------------------------------------
SELECT TOP 100 *
  FROM [Numbers];


/* What is CharIndex */
SELECT CHARINDEX('Test', 'This is a Test'); 
GO

DECLARE @v_a                   [NVARCHAR](255);

SELECT @v_a                    = '1,3,5,7,9,14,36,395';

SELECT @v_a 

SELECT CONVERT([NVARCHAR](12), [Number]) 
  FROM [dbo].[Numbers];

SELECT (',' + CONVERT([NVARCHAR](12), [Number])  + ',')
  FROM [dbo].[Numbers];

SELECT ',' + @v_a + ','

GO

-----------------------------------Cool Way---------------------------------------------------------
DECLARE @v_a                   [NVARCHAR](255);

SELECT @v_a                    = '1,3,5,7,9,14,36,395';

SELECT [value]
FROM STRING_SPLIT(@v_a, ',');


