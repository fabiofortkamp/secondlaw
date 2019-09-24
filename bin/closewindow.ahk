; This script closes the window name passed as argument, e.g.
; AutoHotkey.exe closewindow.ahk "Visual Studio Code"

; To match strings anywhere in the window title
SetTitleMatchMode 2

If (WinExist(A_Args[1]))
   WinClose