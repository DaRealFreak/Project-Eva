#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route25

{
    ; option to weight this route between 0-100
    Weight()
    {
        return 100
    }

    Run()
    {
        ; start walking
        Sleep, 750
        Send, {d Down}
        Sleep, 93
        Send, {w Down}
        Sleep, 375
        Send, {LShift Down}
        Sleep, 750
        Send, {LShift Up}
        Sleep, 954
        Send, {d Up}
        Sleep, 15
        Send, {a Down}
        Sleep, 156
        Send, {a Up}
        Sleep, 250
        Send, {d Down}
        Sleep, 454
        Send, {d Up}
        Sleep, 390
        Send, {Space Down}
        Sleep, 188
        Send, {Space Up}
        Sleep, 718
        Send, {a Down}
        Sleep, 969
        Sleep, 219
        Sleep, 219
        Send, {Space Down}
        Sleep, 172
        Send, {Space Up}
        Sleep, 468
        Send, {a Up}
        Sleep, 203
        Send, {d Down}
        Sleep, 1188
        Send, {a Down}{d Up}
        Sleep, 656
        Send, {a Up}
        Sleep, 125
        Send, {d Down}
        Sleep, 922
        Send, {Space Down}
        Sleep, 94
        Send, {d Up}
        Sleep, 203
        Send, {Space Up}
        Sleep, 922
        Send, {d Down}
        Sleep, 1094
        Send, {a Down}
        Sleep, 46
        Send, {d Up}
        Sleep, 360
        Send, {a Up}
        Sleep, 297
        Send, {d Down}
        Sleep, 250
        Send, {d Up}
        Sleep, 15
        Send, {w Up}
        Sleep, 282
        Send, {d Down}
        Sleep, 120
        Send, {d Up}
        Sleep, 109
        Send, {w Down}
        Sleep, 1600
        Send, {w Up}
        sleep 750
    }
}