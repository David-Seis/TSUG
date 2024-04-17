USE SQLTNT;
GO

SET NOCOUNT ON;


DECLARE @v_Domain [NVARCHAR](100);

EXEC [master].[dbo].[xp_regread]
     @rootkey                  = 'HKEY_LOCAL_MACHINE'
    ,@key                      = 'SYSTEM\ControlSet001\Services\Tcpip\Parameters\'
    ,@value_name               = 'Domain'
    ,@value                    = @v_Domain OUTPUT;

SELECT @v_Domain               AS [@Domain];
GO