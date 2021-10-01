#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route1
{
    ; option to weight this route between 0-100
    Weight()
    {
        ; 100% chance if we roll this route to actually take it, since static_19_dance is equal from pathing to this route
        return 100
    }

    Run()
    {
        send {w down}
        Send, {d Down}
        Sleep, 453
        Send, {LShift Down}
        Sleep, 218
        Send, {LShift Up}
        Sleep, 985
        Send, {d Up}
        Sleep, 531
        Send, {d Down}
        Sleep, 625
        Send, {d Up}
        Sleep, 2750
        Send, {a Down}
        Sleep, 1328
        Send, {a Up}
        Sleep, 516
        Send, {a Down}
        Sleep, 78
        Send, {a Up}
        Sleep, 1656
        Send, {d Down}
        Sleep, 1781
        Send, {d Up}
        Sleep, 704
        Send, {d Down}
        Sleep, 80
        Send, {d Up}
        sleep 1.2*1000
        send {w up}
   }
}