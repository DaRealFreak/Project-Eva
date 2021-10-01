#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route13
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
        Sleep, 1*1000
        Send, {Space Down}
        Sleep, 547
        Send, {Space Up}
        Sleep, 1984
        Send, {D Down}
        Sleep, 1.6*1000
        Send, {d Up}
        Sleep, 1.5*1000
        Send, {w Up}
        Sleep, 125
        Send, {LShift Up}
        sleep 250
    }
}