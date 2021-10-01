#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route29

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
        Sleep, 141
        Send, {w Up}
        Sleep, 437
        Send, {d Down}
        Sleep, 47
        Send, {w Down}
        Sleep, 203
        Send, {LShift Down}
        Sleep, 547
        Send, {LShift Up}
        Sleep, 688
        Send, {d Up}
        Sleep, 109
        Send, {Space Down}
        Sleep, 203
        Send, {d Down}
        Sleep, 32
        Send, {Space Up}
        Sleep, 1390
        Send, {d Up}
        Sleep, 469
        Send, {Space Down}
        Sleep, 172
        Send, {Space Up}
        Sleep, 453
        Send, {a Down}
        Sleep, 3172
        Send, {a Up}
        Sleep, 47
        Send, {d Down}
        Sleep, 312
        Send, {d Up}
        Sleep, 63
        Send, {a Down}
        Sleep, 187
        Send, {a Up}
        Sleep, 47
        Send, {d Down}
        Sleep, 453
        Send, {a Down}
        Sleep, 16
        Send, {d Up}
        Sleep, 140
        Send, {a Up}
        Sleep, 157
        Send, {d Down}
        Sleep, 187
        Send, {d Up}
        Sleep, 125
        Send, {d Down}
        Sleep, 453
        Send, {Space Down}
        Sleep, 297
        Send, {Space Up}
        Sleep, 1672
        Send, {d Up}
        Sleep, 78
        Send, {a Down}
        Sleep, 406
        Send, {a Up}
        Sleep, 32
        Send, {d Down}
        Sleep, 203
        Send, {d Up}
        Sleep, 250
        Send, {a Down}
        Sleep, 85
        Send, {a Up}
        Sleep, 600
        Send, {w Up}
        Sleep, 234
        Send, {w Down}
        Sleep, 300
        Send, {w Up}
        sleep 750
    }
}
