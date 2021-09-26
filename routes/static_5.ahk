#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route5
{
    ; option to weight this route between 0-100
    Weight()
    {
        return 100
    }

    Run()
    {
        send {d down}
        send {w down}
        sleep 300
        send {Shift}
        sleep 700
        send {d up}
        sleep 100
        send {d down}
        sleep 2*1000
        send {d up}
        sleep 1*1000
        send {a down}
        sleep 400
        send {a up}
        sleep 800
        send {a down}
        sleep 2*1000
        send {a up}
        sleep 400
        send {Space down}
        sleep 700
        send {Space up}
        sleep 1.3*1000
        send {d down}
        sleep 2.1*1000
        send {d up}
        sleep 1.6*1000
        send {w up}
   }
}