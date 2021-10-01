#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route26

{
    ; option to weight this route between 0-100
    Weight()
    {
        return 20
    }

    Run()
    {
        ; start walking
        Sleep, 750
        Send, {d Down}
        Sleep, 109
        Send, {w Down}
        Sleep, 422
        Send, {LShift Down}
        Sleep, 594
        Send, {LShift Up}
        Sleep, 765
        Send, {d Up}
        Sleep, 31
        Send, {a Down}
        Sleep, 125
        Send, {a Up}
        Sleep, 235
        Send, {d Down}
        Sleep, 1234
        Send, {d Up}
        Sleep, 141
        Send, {a Down}
        Sleep, 312
        Send, {a Up}
        Sleep, 219
        Send, {Space Down}
        Sleep, 188
        Send, {Space Up}
        Sleep, 312
        Send, {a Down}
        Sleep, 1813
        Send, {Space Down}
        Sleep, 250
        Send, {Space Up}
        Sleep, 421
        Send, {a Up}
        Sleep, 94
        Send, {d Down}
        Sleep, 1047
        Send, {d Up}
        Sleep, 266
        Send, {d Down}
        Sleep, 109
        Send, {d Up}
        Sleep, 391
        Send, {w Up}
        Sleep, 750
        Send, {w Down}
        Sleep, 343
        Send, {d Down}
        Sleep, 1250
        Send, {LShift Down}
        Sleep, 391
        Send, {LShift Up}{d Up}
        Sleep, 31
        Send, {a Down}
        Sleep, 188
        Send, {d Down}{a Up}
        Sleep, 1453
        Send, {d Up}
        Sleep, 31
        Send, {a Down}
        Sleep, 156
        Send, {a Up}
        Sleep, 188
        Send, {w Up}
        Sleep, 78
        Send, {a Down}
        Sleep, 20
        Send, {a Up}
        Sleep, 5000
        Send, {w Down}
        Sleep, 2400
        Send, {w Up}
        sleep 750
    }
}