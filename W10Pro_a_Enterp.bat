@echo off

REM COMPRUEBA VERSION
ver | find "10.0"
if NOT errorlevel 1 goto W10
goto NO10Pro

:W10
REM Registra clave KMS para W10 Enterprise
echo cscript %systemroot%\system32\slmgr.vbs -ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 > MIGRA2ENT.TXT
cscript %systemroot%\system32\slmgr.vbs -ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >> MIGRA2ENT.TXT
goto ACTIVA

:NO10Pro
ECHO ESTO NO ES W10 Pro -NO SE MIGRA- >> MIGRA2ENT.TXT
goto EXIT

:ACTIVA
cscript %systemroot%\system32\slmgr.vbs -ato >> MIGRA2ENT.TXT

:EXIT
