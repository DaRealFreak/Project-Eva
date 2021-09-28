#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route15
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
        Sleep, 219
        Send, {d Down}
        Sleep, 141
        Send, {LShift Down}
        Sleep, 1875
        Send, {d Up}
        Sleep, 937
        Send, {Space Down}
        Sleep, 610
        Send, {Space Up}
        Sleep, 1218
        Send, {A Down}
        Sleep, 235
        Send, {Space Down}
        Sleep, 234
        Send, {Space Up}
        Sleep, 594
        Send, {A Up}
        Sleep, 2344
        Send, {D Down}
        Sleep, 156
        Send, {d Up}
        Sleep, 312
        Send, {D Down}
        Sleep, 1438
        Send, {d Up}
        Sleep, 187
        Send, {Space Down}
        Sleep, 329
        Send, {Space Up}
        Sleep, 1265
        Send, {D Down}
        Sleep, 485
        Send, {d Up}
        Sleep, 328
        Send, {w Up}
        Sleep, 31
        Send, {LShift Up}
    }
}