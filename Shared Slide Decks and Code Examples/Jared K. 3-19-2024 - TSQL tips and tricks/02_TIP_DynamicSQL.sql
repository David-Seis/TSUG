USE [SQLTNT];
GO

SET NOCOUNT ON;

DECLARE @v_SQL                 [NVARCHAR](MAX)                 = ''
       ,@v_TBL                 [SYSNAME]                       = 'Dim_Server'
	   ,@v_Max                 [INT];


SELECT @v_Max                  = MAX(ORDINAL_POSITION)
  FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_NAME              = @v_TBL;

SELECT @v_SQL                  = @v_SQL + '[' + COLUMN_NAME + ']' +
       CASE WHEN ORDINAL_POSITION = @v_Max
	        THEN ''
			ELSE ', ' 
			 END
  FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_NAME              = @v_TBL;

 SELECT @v_SQL;

 /* Insert The Record */
 INSERT [DemoServer]
 (      [DIM_Server_ID], [Entity], [Instance], [ServerName], [ConnType], [Server_ID], [EntityType], [CPU], [PhysicalMemory], [LastPing], [OSStartTime], [WinVer], [WinBuild], [OSVersion], [LPIM], [IFI], [VirtualSysDesc], [ServiceName], [EngineStartTime], [UpTime], [ProductVersion], [IntVer], [ProductLevel], [Edition], [SQLVersion], [SQLVer], [IP], [Port], [DataPath], [LogPath], [BUPath], [Entity_ID], [EntityParent_ID], [EntityType_ID], [EntityTypeDesc], [ServerType_ID], [ServerTypeDesc], [ConnType_ID], [ConnectionTypeDesc], [ServerActive])     
 SELECT [DIM_Server_ID], [Entity], [Instance], [ServerName], [ConnType], [Server_ID], [EntityType], [CPU], [PhysicalMemory], [LastPing], [OSStartTime], [WinVer], [WinBuild], [OSVersion], [LPIM], [IFI], [VirtualSysDesc], [ServiceName], [EngineStartTime], [UpTime], [ProductVersion], [IntVer], [ProductLevel], [Edition], [SQLVersion], [SQLVer], [IP], [Port], [DataPath], [LogPath], [BUPath], [Entity_ID], [EntityParent_ID], [EntityType_ID], [EntityTypeDesc], [ServerType_ID], [ServerTypeDesc], [ConnType_ID], [ConnectionTypeDesc], [ServerActive]
   FROM [Dim_Server];

 SELECT *
   FROM [DemoServer];

 

