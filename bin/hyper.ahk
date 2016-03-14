;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         Fábio Pinto Fortkamp <fabio@fabiofortkamp.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; this script changes the left Ctrl key into an Hyper key, emulating Ctrl-Shift-Alt

LCtrl::sendinput, {LShift down}{LCtrl down}{LAlt down}
LCtrl up::sendinput, {LShift up}{LCtrl up}{LAlt up}