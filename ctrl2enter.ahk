#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

#Include <dual/dual>
dual := new Dual

#Include <dual/defaults>

#If true ; Override defaults.ahk. There will be "duplicate hotkey" errors otherwise.

; BigCtrl-like, only Enter instead of Space
*Enter::
*Enter UP::dual.combine("RCtrl", A_ThisHotkey)

*LCtrl::
*LCtrl UP::dual.combine(A_ThisHotkey, "Esc")

*\::
*\ UP::dual.combine("RCtrl", "\")

#If
