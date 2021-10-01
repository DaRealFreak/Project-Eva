#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route21

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
        Send, {w Down}
        Sleep, 422
        Send, {d Down}
        Sleep, 984
        Send, {LShift Down}
        Sleep, 2094
        Send, {LShift Up}
        Sleep, 203
        Send, {d Up}
        Sleep, 531
        Send, {a Down}
        Sleep, 219
        Send, {a Up}
        Sleep, 188
        Send, {d Down}
        Sleep, 172
        Send, {d Up}
        Sleep, 390
        Send, {a Down}
        Sleep, 94
        Send, {a Up}
        Sleep, 172
        Send, {a Down}
        Sleep, 62
        Send, {a Up}
        Sleep, 94
        Send, {a Down}
        Sleep, 2422
        Send, {a Up}
        Sleep, 531
        Send, {a Down}
        Sleep, 203
        Send, {a Up}
        Sleep, 844
        Send, {d Down}
        Sleep, 1391
        Send, {d Up}
        Sleep, 172
        Send, {d Down}
        Sleep, 234
        Send, {w Up}
        Sleep, 391
        Send, {w Down}
        Sleep, 150
        Send, {d Up}
        Sleep, 500
        Send, {d Down}
        Sleep, 1047
        Send, {d Up}
        Sleep, 50
        Send, {LShift Down}
        Sleep, 190
        Send, {LShift Up}
        Sleep, 172
        Send, {a Down}
        Sleep, 78
        Send, {a Up}
        Sleep, 172
        Send, {d Down}
        Sleep, 10
        Send, {d Up}
        Sleep, 375
        Send, {w Up}
        Sleep, 75
        Send, {w Down}
        Sleep, 10
        loop, 1 {
            send {space down}
            sleep 0.90*1000
            send {space up}
        }

        Sleep, 500
        Send, {w Up}
        sleep 750
    }
}