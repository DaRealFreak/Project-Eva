#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route30

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
        Sleep, 125
        Send, {w Down}
        Sleep, 109
        Send, {LShift Down}
        Sleep, 1813
        Send, {LShift Up}
        Sleep, 46
        Send, {d Up}
        Sleep, 422
        Send, {d Down}
        Sleep, 313
        Send, {d Up}
        Sleep, 672
        Send, {Space Down}
        Sleep, 109
        Send, {Space Up}
        Sleep, 1359
        Send, {a Down}
        Sleep, 1844
        Send, {a Up}
        Sleep, 360
        Sleep, 140
        Sleep, 1500
        Send, {d Down}
        Sleep, 781
        Send, {a Down}
        Sleep, 47
        Send, {d Up}
        Sleep, 125
        Send, {a Up}
        Sleep, 47
        Send, {d Down}
        Sleep, 1391
        Send, {a Down}
        Sleep, 15
        Send, {d Up}
        Sleep, 313
        Send, {a Up}
        Sleep, 31
        Send, {d Down}
        Sleep, 219
        Send, {d Up}
        Sleep, 187
        Send, {d Down}
        Sleep, 125
        Send, {d Up}
        Sleep, 157
        Send, {a Down}
        Sleep, 150
        Send, {a Up}
        Sleep, 250
        Send, {w Up}
        Sleep, 200
        Send, {w Down}
        Sleep, 1187
        Send, {w Up}
        Sleep, 20
        Send, {a Down}
        Sleep, 110
        Send, {a Up}
        sleep 750
    }
}