#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route18
{
    ; option to weight this route between 0-100
    Weight()
    {
        ; 5% chance if we roll this route to actually take it, since static_17 is equal from pathing to this route
        return 5
    }

    Run()
    {
        ; start walking
        sleep 250
        Send, {d Down}
        Sleep, 282
        Send, {w Down}
        Sleep, 140
        Send, {Shift}
        Sleep, 1.75*1000
        Send, {d Up}
        Sleep, 1547
        Send, {Space Down}
        Sleep, 219
        Send, {Space Up}

        Sleep, 1700
        send {w up}

        ; dance 10 seconds lol
        send {RAlt down}
        sleep 250
        send 1
        sleep 250
        send {RAlt up}
        sleep 10*1000

        send {w down}
        sleep 50
        send {Shift}
        sleep 250

        Send, {a Down}
        Sleep, 2156
        Send, {a Up}
        Sleep, 922
        Send, {d Down}
        Sleep, 2625
        Send, {d Up}
        Sleep, 1.9*1000
        Send, {w Up}
    }
}