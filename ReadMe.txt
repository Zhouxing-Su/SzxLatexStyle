1. To make TexLive recognize user macros (styles or classes) without creating a local copy for each project:

	Add a line of "TEXMFHOME = X:/Path/To/This/Directory" in "C:/texlive/2016/texmf.cnf", or type command "tlmgr conf texmf TEXMFHOME X:/Path/To/This/Directory".
	Organize the TEXMFHOME directory structure as TDS.
	(SetTexmfHome.bat will do these stuffs)

	Reference: 
	http://tug.org/texmf-dist/doc/texlive/texlive-en/texlive-en.html#x1-360003.4.6


2. To make TeXstudio show syntex highlight and autocompletion:

	Copy "szx.cwl" to "%AppData%\texstudio\completion\user\szx.cwl".
	(SetTeXstudioCfg.bat will do these stuffs)
