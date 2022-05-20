#k::
	;DetectHiddenWindows, On
	If WinExist("ahk_exe firefox.exe")
	;If WinExist("ahk_class MozillaWindowClass")
		WinActivate
		Send ^k
	return
