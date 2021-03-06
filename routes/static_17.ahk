#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route17
{
    ; option to weight this route between 0-100
    Weight()
    {
        ; 95% chance if we roll this route to actually take it, since static_18_dance is equal from pathing to this route
        return 95
    }

    Run()
    {
        ; start walking
        sleep 250
        Send, {d Down}
        Sleep, 282
        Send, {w Down}
        Sleep, 140
        Send, {LShift Down}
        Sleep, 1.75*1000
        Send, {d Up}
        Sleep, 1547
        Send, {Space Down}
        Sleep, 219
        Send, {Space Up}
        Sleep, 2000
        Send, {A Down}
        Sleep, 2156
        Send, {A Up}
        Sleep, 922
        Send, {D Down}
        Sleep, 2625
        Send, {d Up}
        Sleep, 1.9*1000
        Send, {LShift Up}
        Sleep, 62
        Send, {w Up}
        sleep 250
    }
}