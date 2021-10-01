#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route14
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
        Sleep, 172
        Send, {d Down}
        Sleep, 438
        Send, {LShift Down}
        Sleep, 2031
        Send, {d Up}
        Sleep, 2656
        Send, {A Down}
        Sleep, 950
        Send, {A Up}
        Sleep, 485
        Send, {A Down}
        Sleep, 500
        Send, {A Up}
        Sleep, 378
        Send, {Space Down}
        Sleep, 828
        Send, {Space Up}
        Sleep, 1207
        Send, {D Down}
        Sleep, 1.78*1000
        Send, {d Up}
        Sleep, 1.7*1000
        Send, {LShift Up}
        Sleep, 15
        Send, {w Up}
        sleep 250
    }
}