#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route20

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
        Sleep, 266
        Send, {w Down}
        Sleep, 1422
        Send, {d Up}
        Sleep, 16
        Send, {a Down}
        Sleep, 171
        Send, {d Down}
        Sleep, 16
        Send, {a Up}
        Sleep, 563
        Send, {d Up}
        Sleep, 171
        Send, {d Down}
        Sleep, 422
        Send, {LShift Down}
        Sleep, 1063
        Send, {LShift Up}
        Sleep, 203
        Send, {d Up}
        Sleep, 328
        Send, {a Down}
        Sleep, 344
        Send, {a Up}
        Sleep, 1672
        Send, {a Down}
        Sleep, 1703
        Send, {a Up}
        Sleep, 109
        Send, {Space Down}
        Sleep, 156
        Send, {Space Up}
        Sleep, 1188
        Send, {d Down}
        ;Sleep, 1781
        Sleep, 1400
        Send, {d Up}
        Sleep, 313
        Send, {d Down}
        Sleep, 718
        Send, {d Up}
        Sleep, 344
        Send, {d Down}
        Sleep, 78
        Send, {d Up}
        Sleep, 203
        Send, {a Down}
        Sleep, 110
        Send, {a Up}
        Sleep, 250
        Send, {d Down}
        Sleep, 47
        Send, {d Up}
        Sleep, 422
        Send, {w Up}
        Sleep, 406
        Send, {d Down}
        Sleep, 260
        Send, {d Up}
        Sleep, 50
        Send, {w Down}
        Sleep, 1400
        Send, {w Up}
        sleep 750
    }
}