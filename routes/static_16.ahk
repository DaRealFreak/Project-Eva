#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route16
{
    ; option to weight this route between 0-100
    Weight()
    {
        return 100
    }

    Run()
    {
        ; start walking
        Send, {w Down}
        Sleep, 328
        Send, {d Down}
        Sleep, 453
        Send, {LShift Down}
        Sleep, 1906
        Send, {d Up}
        Sleep, 2438
        Send, {A Down}
        Sleep, 1672
        Send, {A Up}
        Sleep, 984
        Send, {Space Down}
        Sleep, 156
        Send, {Space Up}
        Sleep, 1860
        Send, {D Down}
        Sleep, 2109
        Send, {d Up}
        Sleep, 1406
        Send, {w Up}
        Sleep, 469
        Send, {LShift Up}
    }
}