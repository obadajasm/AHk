Menu, Tray,Icon ,k.ico
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
CloseScript("Numbers.ahk")
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Installkeybdhook
#Persistent

^f1::Return
*f1::Return
#f1::Return
^f2::Return
*f2::Return
#f2::Return
^2::Return
*2::Return
#2::Return
!f1::Return






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
Esc::Return
Hotstring("EndChars", "*")
#Hotstring EndChars *
0::Return
1::Return
2::Return
3::Return
4::Return
5::Return
6::Return
7::Return
8::Return
9::Return
-::Return


:*:(O::()
:*:) _::_
:*:a) _::a_
:*:%T::T
:*:*I::I
:*:$R::R
:*:#E::E
:*:^Y::Y
:*:()::O
:*:&U::U
Space::Send {Blind}{Text} `

    
XButton2::LButton
XButton1::LButton

#LAlt::tog()
RAlt::tog()

$RControl::
Run Numbers.ahk
ExitAPP
KeyWait, RControl
Return
$RControl Up:: 






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
	
       Run Numbers.ahk
        togstate = 1
	ExitAPP
		
    }
}