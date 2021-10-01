#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route22

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
        Sleep, 390
        Send, {w Down}
        Sleep, 641
        Send, {LShift Down}
        Sleep, 594
        Send, {d Up}
        Sleep, 15
        Send, {LShift Up}
        Sleep, 344
        Send, {d Down}
        Sleep, 1344
        Send, {d Up}
        Sleep, 765
        Send, {Space Down}
        Sleep, 203
        Send, {Space Up}
        Sleep, 1016
        Send, {a Down}
        Sleep, 625
        Send, {Space Down}
        Sleep, 219
        Send, {Space Up}
        Sleep, 1094
        Send, {a Up}
        Sleep, 718
        Send, {Space Down}
        Sleep, 250
        Send, {Space Up}
        Sleep, 657
        Send, {d Down}
        Sleep, 1203
        Send, {d Up}
        Sleep, 93
        Send, {d Down}
        Sleep, 719
        Send, {d Up}
        Sleep, 219
        Send, {d Down}
        Sleep, 156
        Send, {d Up}
        Sleep, 94
        Send, {d Down}
        Sleep, 290
        Send, {d Up}
        Sleep, 150
        Send, {w Up}
        Sleep, 250
        Sleep, 93
        Send, {w Down}
        Sleep, 2900
        Send, {w Up}
        sleep 750
    }
}