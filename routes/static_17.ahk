#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route17
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
        Send, {d Down}
        Sleep, 282
        Send, {w Down}
        Sleep, 140
        Send, {LShift Down}
        Sleep, 1469
        Send, {d Up}
        Sleep, 1547
        Send, {Space Down}
        Sleep, 219
        Send, {Space Up}
        Sleep, 2000
        Send, {A Down}
        Sleep, 2156
        Send, {A Up}
        Sleep, 922
        Send, {D Down}
        Sleep, 2625
        Send, {d Up}
        Sleep, 828
        Send, {A Down}
        Sleep, 125
        Send, {A Up}
        Sleep, 1150
        Send, {LShift Up}
        Sleep, 62
        Send, {w Up}
        sleep 250
    }
}