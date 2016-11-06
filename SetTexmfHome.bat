@ECHO OFF

set NewHomeDir=%~dp0
set NewHomeDir=%NewHomeDir:\=/%
IF %NewHomeDir:~-1%==/ SET NewHomeDir=%NewHomeDir:~0,-1%

ECHO This will override your texmf-home directory (%NewHomeDir%)!

REM FOR /F "USEBACKQ tokens=* delims=" %%F IN (`kpsewhich -var-value TEXMFHOME`) DO (SET OldHomeDir=%%F)

ECHO Press any key to set current directory as texmf-home.
PAUSE>nul

@ECHO ON

cmd /k tlmgr conf texmf TEXMFHOME %NewHomeDir%
