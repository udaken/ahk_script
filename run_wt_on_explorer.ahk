
; Explorer window
#IfWinActive ahk_class CabinetWClass
^@::
	hwnd := WinActive("A")

	objshell := ComObjCreate("shell.application")
	objshellwindows := objshell.Windows()

	For objWindow in objshellwindows {
		if (hwnd == objWindow.HWND) {
			url := objWindow.LocationURL
			StringReplace, location, url, /, \, All
			StringMid,  location, location, StrLen("file:////")
			if InStr(FileExist(location), "D") {
				Run,"wt.exe" new-tab  -d %location% 
			}
			return
		}
	}
