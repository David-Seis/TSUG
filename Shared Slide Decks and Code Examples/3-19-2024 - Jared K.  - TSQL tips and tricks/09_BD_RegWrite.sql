USE SQLTNT;
GO

SET NOCOUNT ON;



EXEC [master].[dbo].[xp_regWrite]
     @rootkey                  = 'HKEY_LOCAL_MACHINE'
    ,@key                      = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\'
    ,@value_name               = 'legalnoticecaption'
	,@type                     = 'REG_SZ'
    ,@value                    = 'WARNING!!!';

EXEC [master].[dbo].[xp_regWrite]
     @rootkey                  = 'HKEY_LOCAL_MACHINE'
    ,@key                      = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\'
    ,@value_name               = 'legalnoticetext'
	,@type                     = 'REG_SZ'
    ,@value                    = 'You are about to release the CLEAR LETHAL ODORLESS GAS...RUN AWAY!!!!!!';

GO


DECLARE @v_Value [NVARCHAR](100);

EXEC [master].[dbo].[xp_regread]
     @rootkey                  = 'HKEY_LOCAL_MACHINE'
    ,@key                      = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\'
    ,@value_name               = 'legalnoticecaption'
    ,@value                    = @v_Value OUTPUT;

SELECT @v_Value
GO

DECLARE @v_Value [NVARCHAR](100);

EXEC [master].[dbo].[xp_regread]
     @rootkey                  = 'HKEY_LOCAL_MACHINE'
    ,@key                      = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\'
    ,@value_name               = 'legalnoticetext'
    ,@value                    = @v_Value OUTPUT;

SELECT @v_Value
GO

EXEC [master].[dbo].[xp_regWrite]
     @rootkey                  = 'HKEY_LOCAL_MACHINE'
    ,@key                      = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\'
    ,@value_name               = 'legalnoticecaption'
	,@type                     = 'REG_SZ'
    ,@value                    = '';

EXEC [master].[dbo].[xp_regWrite]
     @rootkey                  = 'HKEY_LOCAL_MACHINE'
    ,@key                      = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\'
    ,@value_name               = 'legalnoticetext'
	,@type                     = 'REG_SZ'
    ,@value                    = '';

GO


DECLARE @v_Value [NVARCHAR](100);

EXEC [master].[dbo].[xp_regread]
     @rootkey                  = 'HKEY_LOCAL_MACHINE'
    ,@key                      = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\'
    ,@value_name               = 'legalnoticecaption'
    ,@value                    = @v_Value OUTPUT;

SELECT @v_Value
GO

DECLARE @v_Value [NVARCHAR](100);

EXEC [master].[dbo].[xp_regread]
     @rootkey                  = 'HKEY_LOCAL_MACHINE'
    ,@key                      = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\'
    ,@value_name               = 'legalnoticetext'
    ,@value                    = @v_Value OUTPUT;

SELECT @v_Value