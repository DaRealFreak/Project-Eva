#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route23

{
    ; option to weight this route between 0-100
    Weight()
    {
        return 0
    }

    Run()
    {
        ; start walking
        Sleep, 750
        Send, {d Down}
        Sleep, 797
        Send, {d Up}
        Sleep, 453
        Send, {w Down}
        Sleep, 282
        Send, {w Up}
        Sleep, 593
        Send, {w Down}
        Sleep, 391
        Send, {LShift Down}
        Sleep, 156
        Send, {D Down}
        Sleep, 2063
        Send, {d Up}
        Sleep, 62
        Send, {LShift Up}
        Sleep, 1282
        Send, {d Down}
        Sleep, 296
        Send, {d Up}
        Sleep, 500
        Send, {a Down}
        Sleep, 3000
        Send, {d Down}
        Sleep, 219
        Send, {d Up}
        Sleep, 219
        Send, {a Up}{d Down}
        Sleep, 250
        Send, {d Up}
        Sleep, 47
        Send, {a Down}
        Sleep, 62
        Send, {a Up}
        Sleep, 32
        Send, {d Down}
        Sleep, 156
        Send, {d Up}
        Sleep, 78
        Send, {a Down}
        Sleep, 94
        Send, {a Up}
        Sleep, 109
        Send, {d Down}
        Sleep, 250
        Send, {d Up}
        Sleep, 203
        Send, {d Down}
        Sleep, 110
        Send, {d Up}
        Sleep, 93
        Send, {d Down}
        Sleep, 2250
        Send, {d Up}
        Sleep, 16
        Send, {a Down}
        Sleep, 266
        Send, {a Up}
        Sleep, 156
        Send, {d Down}
        Sleep, 150
        Send, {d Up}
        Sleep, 266
        Send, {w Up}
        Sleep, 328
        Send, {w Down}
        Sleep, 1550
        Send, {w Up}
        sleep 750
    }
}