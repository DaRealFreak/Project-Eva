#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route19

{
    ; option to weight this route between 0-100
    Weight()
    {
        return 80
    }

    Run()
    {
        ; start walking
        Sleep, 750
        Send, {w Down}
        Sleep, 282
        Send, {w Up}
        Sleep, 640
        Send, {d Down}
        Sleep, 94
        Send, {w Down}
        Sleep, 469
        Send, {LShift Down}
        Sleep, 2031
        Send, {LShift Up}
        Sleep, 250
        Send, {d Up}
        Sleep, 47
        Send, {a Down}
        Sleep, 422
        Send, {a Up}{d Down}
        Sleep, 219
        Send, {a Down}{d Up}
        Sleep, 93
        Send, {a Up}
        Sleep, 32
        Send, {d Down}
        Sleep, 468
        Send, {d Up}
        Sleep, 125
        Send, {a Down}
        Sleep, 188
        Send, {a Up}
        Sleep, 187
        Send, {a Down}
        Sleep, 188
        Send, {a Up}
        Sleep, 312
        Send, {a Down}
        Sleep, 344
        ;Send, {Space Down}
        Sleep, 172
        ;Send, {Space Up}
        Sleep, 1562
        Send, {a Up}
        Sleep, 2079
        Send, {d Down}
        Sleep, 421
        Send, {Space Down}
        Sleep, 172
        Send, {Space Up}
        Sleep, 735
        Send, {d Up}
        Sleep, 375
        Send, {d Down}
        Sleep, 890
        Send, {d Up}
        Sleep, 235
        Send, {a Down}
        Sleep, 120
        Send, {a Up}
        Sleep, 204
        Send, {d Down}
        ;Sleep, 156
        Sleep, 100
        Send, {d Up}
        Sleep, 200
        Send, {w Up}
        Sleep, 250
        ;Send, {d Down}
        ;Sleep, 47
        ;Send, {d Up}
        Sleep, 313
        Send, {w Down}
        Sleep, 1000
        Send, {w Up}
        Sleep, 50
        Send, {a Down}
        Sleep, 450
        Send, {a Up}
        Sleep, 50
        Send, {w Down}
        Sleep, 600
        Send, {w Up}

        sleep 750
    }
}