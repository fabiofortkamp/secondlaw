; from http://tech.xster.net/tips/quake-style-drop-down-terminal-for-windows/
; Change your hotkey here
^`::

DetectHiddenWindows, on
IfWinExist ahk_class Console_2_Main
{
	IfWinActive ahk_class Console_2_Main
	  {
			WinHide ahk_class Console_2_Main
			WinActivate ahk_class Shell_TrayWnd
		}
	else
	  {
	    WinShow ahk_class Console_2_Main
	    WinActivate ahk_class Console_2_Main
	  }
}
else
	
	Run Console.exe

DetectHiddenWindows, off
return

; hide Console on "esc".
#IfWinActive ahk_class Console_2_Main
Escape::
{
   	WinHide ahk_class Console_2_Main
   	WinActivate ahk_class Shell_TrayWnd
}
return