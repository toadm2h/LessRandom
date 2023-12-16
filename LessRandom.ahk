#SingleInstance Force
#NoEnv
#Persistent
#Warn All, Off
SetTitleMatchMode, 2
SetWorkingDir %A_ScriptDir%
SetBatchLines -1

CoordMode, Mouse, Window
; Menu, Tray, NoStandard
; Menu, Tray, Add, Exit, GuiClose
#IfWinActive, Siralim Ultimate


F4::
    Send, {f down}
    Sleep 50
    Send, {f up}
    If (A_ScreenWidth=2560)
        Loop
            {
                panx:=0
                CoordMode, Pixel, Window
                ImageSearch, panx, pany, 2175, 1080, 2222, 1141, *25 img/four2k.bmp
                If (panx>1)
                    Break
                Else
                    {
                        Send, {f down}
                        Sleep 30
                        Send, {f up}
                        Sleep 30
                    }
            }
    Else
        Loop
            {
                panx:=0
                CoordMode, Pixel, Window
                ImageSearch, panx, pany, 1630, 809, 1659, 851, *25 img/fourfhd.bmp
                If (panx>1)
                    Break
                Else
                    {
                        Send, {f down}
                        Sleep 30
                        Send, {f up}
                        Sleep 30
                    }
            }
    Return

F3::
    Send, {f down}
    Sleep 50
    Send, {f up}
    If (A_ScreenWidth=2560)
        Loop
            {
                panx:=0
                CoordMode, Pixel, Window
                ImageSearch, panx, pany, 2175, 1080, 2222, 1141, *25 img/three2k.bmp
                If (panx>1)
                    Break
                Else
                    {
                        Send, {f down}
                        Sleep 30
                        Send, {f up}
                        Sleep 30
                    }
            }
    Else
        Loop
            {
                panx:=0
                CoordMode, Pixel, Window
                ImageSearch, panx, pany, 1630, 809, 1659, 851, *25 img/threefhd.bmp
                If (panx>1)
                    Break
                Else
                    {
                        Send, {f down}
                        Sleep 30
                        Send, {f up}
                        Sleep 30
                    }
            }
    Return

F5::
    Pause
#IfWinActive
F8::
    ExitApp 