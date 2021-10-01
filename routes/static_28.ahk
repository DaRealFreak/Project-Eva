#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route28

{
    ; option to weight this route between 0-100
    Weight()
    {
        return 100
    }

    Run()
    {
        ; start walking
        Sleep, 500
        Send, {w Down}
        Sleep, 250
        Send, {d Down}
        Sleep, 1110
        Send, {LShift Down}
        Sleep, 1468
        Send, {LShift Up}
        Sleep, 203
        Send, {d Up}
        Sleep, 125
        Send, {d Down}
        Sleep, 422
        Send, {a Down}
        Sleep, 16
        Send, {d Up}
        Sleep, 219
        Send, {d Down}{a Up}
        Sleep, 172
        Send, {d Up}{a Down}
        Sleep, 93
        Send, {d Down}{a Up}
        Sleep, 438
        Send, {d Up}
        Sleep, 62
        Send, {a Down}
        Sleep, 188
        Send, {a Up}
        Sleep, 125
        Send, {a Down}
        Sleep, 47
        Send, {a Up}
        Sleep, 125
        Send, {a Down}
        Sleep, 47
        Send, {a Up}
        Sleep, 125
        Send, {a Down}
        Sleep, 46
        Send, {a Up}
        Sleep, 125
        Send, {a Down}
        Sleep, 63
        Send, {a Up}
        Sleep, 109
        Send, {a Down}
        Sleep, 94
        Send, {a Up}
        Sleep, 94
        Send, {a Down}
        Sleep, 219
        Send, {a Up}
        Sleep, 62
        Send, {a Down}
        Sleep, 2047
        Send, {d Down}
        Sleep, 94
        Send, {a Up}
        Sleep, 15
        Send, {a Down}
        Sleep, 32
        Send, {d Up}
        Sleep, 312
        Send, {d Down}{a Up}
        Sleep, 172
        Send, {d Up}
        Sleep, 31
        Send, {a Down}
        Sleep, 266
        Send, {a Up}
        Sleep, 47
        Send, {d Down}
        Sleep, 140
        Send, {d Up}
        Sleep, 157
        Send, {d Down}
        Sleep, 93
        Send, {d Up}
        Sleep, 125
        Send, {d Down}
        Sleep, 94
        Send, {d Up}
        Sleep, 94
        Send, {d Down}
        Sleep, 437
        Send, {d Up}
        Sleep, 250
        Send, {d Down}
        Sleep, 1063
        Send, {a Down}
        Sleep, 47
        Send, {d Up}
        Sleep, 156
        Send, {a Up}{d Down}
        Sleep, 953
        Send, {d Up}
        Sleep, 188
        Send, {a Down}
        Sleep, 62
        Send, {a Up}
        Sleep, 297
        Send, {a Down}
        Sleep, 62
        Send, {a Up}
        Sleep, 200
        Send, {d Down}
        Sleep, 150
        Send, {d Up}
        Sleep, 531
        Send, {w Up}
        Sleep, 100
        Send, {w Down}
        Sleep, 200
        Send, {w Up}
        sleep 750
    }
}