#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route24

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
        Sleep, 281
        Send, {Space Down}
        Sleep, 281
        Send, {Space Up}
        Sleep, 297
        Send, {w Down}
        Sleep, 219
        Send, {d Up}
        Sleep, 344
        Send, {d Down}
        Sleep, 390
        Send, {a Down}{d Up}
        Sleep, 188
        Send, {a Up}
        Sleep, 47
        Send, {d Down}
        Sleep, 234
        Send, {a Down}
        Sleep, 16
        Send, {d Up}
        Sleep, 94
        Send, {a Up}
        Sleep, 31
        Send, {d Down}
        Sleep, 125
        Send, {LShift Down}
        Sleep, 328
        Send, {LShift Up}
        Sleep, 141
        Send, {d Up}
        Sleep, 140
        Send, {a Down}
        Sleep, 94
        Send, {d Down}
        Sleep, 16
        Send, {a Up}
        Sleep, 718
        Send, {d Up}
        Sleep, 157
        Send, {Space Down}
        Sleep, 234
        Send, {Space Up}
        Sleep, 1562
        Send, {a Down}
        Sleep, 329
        Send, {a Up}
        Sleep, 203
        Send, {a Down}
        Sleep, 343
        Send, {a Up}
        Sleep, 125
        Send, {a Down}
        Sleep, 1219
        Send, {a Up}
        Sleep, 31
        Send, {d Down}
        Sleep, 157
        Send, {d Up}
        Sleep, 47
        Send, {a Down}
        Sleep, 484
        Send, {a Up}
        Sleep, 422
        Send, {a Down}
        Sleep, 500
        Send, {a Up}
        Sleep, 219
        Send, {d Down}
        Sleep, 93
        Send, {d Up}
        Sleep, 110
        Send, {d Down}
        Sleep, 156
        Send, {d Up}
        Sleep, 109
        Send, {d Down}
        Sleep, 313
        Send, {d Up}
        Sleep, 234
        Send, {d Down}
        Sleep, 2600
        Send, {d Up}
        Sleep, 32
        Send, {a Down}
        Sleep, 234
        Send, {a Up}
        Sleep, 94
        Send, {d Down}
        Sleep, 140
        Send, {d Up}
        Sleep, 219
        Send, {a Down}
        Sleep, 300
        Send, {a Up}
        Sleep, 203
        Send, {d Down}
        Sleep, 150
        Send, {d Up}
        Sleep, 200
        Send, {w Up}
        sleep 750
    }
}