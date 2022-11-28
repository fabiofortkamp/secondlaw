#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

;toggle Windows Terminal with Ctrl-Shift-Alt-i

^!+i::
    ; If !WinExist("WinTitle ahk_class WinClass", "WinText", "ExcludeTitlePart")
    If !WinExist("ahk_class CASCADIA_HOSTING_WINDOW_CLASS") ; "!" means NOT in this case
        Run WindowsTerminal.exe ; or Run Fullpath of your app
    else
        WinGet, WinState, MinMax, ahk_class CASCADIA_HOSTING_WINDOW_CLASS
    {
        If WinState = -1 ; is minimized
            WinRestore
        else
            WinMinimize
    }
return