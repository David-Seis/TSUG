USE [SQLTNT];
GO

SET NOCOUNT ON;

--SELECT * FROM Dim_Server;
--SELECT * FROM DemoServer;

DROP TABLE IF EXISTS [dbo].[DemoServer];

CREATE TABLE [DemoServer]
(

  [DIM_Server_ID]              [bigint]                        NULL 
 ,[Entity]                     [nvarchar](255)                 NULL 
 ,[Instance]                   [nvarchar](255)                 NULL 
 ,[ServerName]                 [nvarchar](255)                 NULL 
 ,[ConnType]                   [varchar](3)                    NULL 
 ,[Server_ID]                  [uniqueidentifier]              NULL 
 ,[EntityType]                 [varchar](7)                    NULL 
 ,[CPU]                        [int]                           NULL 
 ,[PhysicalMemory]             [int]                           NULL 
 ,[LastPing]                   [datetime]                      NULL 
 ,[OSStartTime]                [datetime]                      NULL 
 ,[WinVer]                     [nvarchar](20)                  NULL 
 ,[WinBuild]                   [nvarchar](4000)                NULL 
 ,[OSVersion]                  [nvarchar](255)                 NULL 
 ,[LPIM]                       [bit]                           NULL 
 ,[IFI]                        [bit]                           NULL 
 ,[VirtualSysDesc]             [nvarchar](255)                 NULL 
 ,[ServiceName]                [nvarchar](255)                 NULL 
 ,[EngineStartTime]            [datetime]                      NULL 
 ,[UpTime]                     [time]                          NULL 
 ,[ProductVersion]             [nvarchar](100)                 NULL 
 ,[IntVer]                     [int]                           NULL 
 ,[ProductLevel]               [nvarchar](255)                 NULL 
 ,[Edition]                    [nvarchar](255)                 NULL 
 ,[SQLVersion]                 [nvarchar](255)                 NULL 
 ,[SQLVer]                     [nvarchar](26)                  NULL 
 ,[IP]                         [nvarchar](255)                 NULL 
 ,[Port]                       [nvarchar](255)                 NULL 
 ,[DataPath]                   [nvarchar](255)                 NULL 
 ,[LogPath]                    [nvarchar](255)                 NULL 
 ,[BUPath]                     [nvarchar](255)                 NULL 
 ,[Entity_ID]                  [uniqueidentifier]              NULL 
 ,[EntityParent_ID]            [uniqueidentifier]              NULL 
 ,[EntityType_ID]              [int]                           NULL 
 ,[EntityTypeDesc]             [nvarchar](516)                 NULL 
 ,[ServerType_ID]              [int]                           NULL 
 ,[ServerTypeDesc]             [nvarchar](516)                 NULL 
 ,[ConnType_ID]                [int]                           NULL 
 ,[ConnectionTypeDesc]         [nvarchar](516)                 NULL 
 ,[ServerActive]               [bit]                           NULL 
);