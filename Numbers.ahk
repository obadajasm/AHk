
Menu, Tray,Icon ,xx.ico


CloseScript(Name)
	{
	DetectHiddenWindows On
	SetTitleMatchMode RegEx
	IfWinExist, i)%Name%.* ahk_class AutoHotkey
		{
		WinClose
		WinWaitClose, i)%Name%.* ahk_class AutoHotkey, , 2
		If ErrorLevel
			return "Unable to close " . Name
		else
			return "Closed " . Name
		}
	else
		return Name . " not found"
	}
CloseScript("Keys.ahk")

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
f1::Return
f2::Return
f3::Return
f4::Return
f5::Return
f6::Return
f7::Return
f8::Return
f9::Return
f10::Return
f11::Return
f12::Return
Hotstring("EndChars", "*")
#Hotstring EndChars *
q::Return
w::Return
e::Return
r::Return
t::Return
y::Return
u::Return
i::Return
o::Return
p::Send {Blind}{Text}`-
-::Return
Space::Return
Esc::Return
XButton2::LButton
XButton1::LButton
#LAlt::tog()
RAlt::tog()

$RControl::

KeyWait, RControl
Return
$RControl Up:: 
Run keys.ahk
ExitAPP

tog()
{
    static togstate = 0
    if (togstate = 1)
    {
        msgbox ON
        togstate = 0
    }
    else
    {
	
       Run keys.ahk
        togstate = 1
	ExitAPP
		
    }
}
