#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route11
{
    ; option to weight this route between 0-100
    Weight()
    {
        return 100
    }

    Run()
    {
        Send, {d Down}
        Sleep, 47
        Send, {w Down}
        Sleep, 297
        Send, {LShift Down}
        Sleep, 218
        Send, {LShift Up}
        Sleep, 1032
        Send, {d Up}
        Sleep, 234
        Send, {d Down}
        Sleep, 188
        Send, {d Up}
        Sleep, 281
        Send, {d Down}
        Sleep, 312
        Send, {d Up}
        Sleep, 813
        Send, {d Down}
        Sleep, 94
        Send, {d Up}
        Sleep, 1171
        Send, {Left Down}
        Sleep, 125
        Send, {Left Up}
        Sleep, 235
        Send, {Left Down}
        Sleep, 156
        Send, {Left Up}
        Sleep, 391
        Send, {Right Down}
        Sleep, 47
        Send, {Right Up}
        Sleep, 2218
        Send, {Right Down}
        Sleep, 500
        Send, {Right Up}
        Sleep, 2860
        Send, {Left Down}
        Sleep, 235
        Send, {Left Up}
        Sleep, 1016
        Send, {w Up}
    }
}