#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route27

{
    ; option to weight this route between 0-100
    Weight()
    {
        return 100
    }

    Run()
    {
        ; start walking
        Sleep, 700
        Send, {w Down}
        Sleep, 141
        Send, {w Up}
        Sleep, 859
        Send, {d Down}
        Sleep, 16
        Send, {w Down}
        Sleep, 172
        Send, {LShift Down}
        Sleep, 734
        Send, {LShift Up}
        Sleep, 141
        Send, {Space Down}
        Sleep, 140
        Send, {Space Up}
        Sleep, 360
        Send, {d Up}
        Sleep, 219
        Send, {d Down}
        Sleep, 1296
        Send, {d Up}
        Sleep, 47
        Send, {a Down}
        Sleep, 297
        Send, {a Up}
        Sleep, 31
        Send, {d Down}
        Sleep, 563
        Send, {d Up}
        Sleep, 47
        Send, {a Down}
        Sleep, 562
        Send, {Space Down}
        Sleep, 188
        Send, {Space Up}{a Up}
        Sleep, 250
        Send, {d Down}
        Sleep, 515
        Send, {d Up}
        Sleep, 266
        Send, {a Down}
        Sleep, 578
        Send, {Space Down}
        Sleep, 125
        Send, {a Up}
        Sleep, 47
        Send, {Space Up}
        Sleep, 266
        Send, {a Down}
        Sleep, 1375
        Send, {a Up}
        Sleep, 203
        Send, {d Down}
        Sleep, 219
        Send, {d Up}
        Sleep, 328
        Send, {d Down}
        Sleep, 328
        Send, {Space Down}
        Sleep, 94
        Send, {d Up}
        Sleep, 140
        Send, {Space Up}
        Sleep, 125
        Send, {d Down}
        Sleep, 735
        Send, {d Up}
        Sleep, 546
        Send, {d Down}
        Sleep, 782
        Send, {d Up}
        Sleep, 281
        Send, {d Down}
        Sleep, 78
        Send, {d Up}
        Sleep, 63
        Send, {a Down}
        Sleep, 78
        Send, {a Up}
        Sleep, 297
        Send, {d Down}
        Sleep, 120
        Send, {d Up}
        Sleep, 407
        Send, {a Down}
        Sleep, 31
        Send, {a Up}
        Sleep, 109
        Send, {w Up}
        Sleep, 375
        Send, {w Down}
        Sleep, 1110
        Send, {w Up}
        sleep 750
    }
}