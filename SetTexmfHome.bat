set HomeDir=%~dp0
set HomeDir=%HomeDir:\=/%
IF %HomeDir:~-1%==/ SET HomeDir=%HomeDir:~0,-1%
cmd /k tlmgr conf texmf TEXMFHOME %HomeDir%
