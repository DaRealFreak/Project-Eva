#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route12
{
    ; option to weight this route between 0-100
    Weight()
    {
        return 100
    }

    Run()
    {
        ; start walking
        sleep 250
        Send, {w Down}
        Sleep, 359
        Send, {LShift Down}
        Sleep, 297
        Send, {D Down}
        Sleep, 2125
        Send, {d Up}
        Sleep, 2141
        Send, {A Down}
        Sleep, 1140
        Send, {A Up}
        Sleep, 766
        Send, {Space Down}
        Sleep, 547
        Send, {Space Up}
        Sleep, 1984
        Send, {D Down}
        Sleep, 1656
        Send, {d Up}
        Sleep, 610
        Send, {D Down}
        Sleep, 47
        Send, {d Up}
        Sleep, 890
        Send, {D Down}
        Sleep, 47
        Send, {d Up}
        Sleep, 700
        Send, {w Up}
        Sleep, 125
        Send, {LShift Up}
        sleep 250
    }
}