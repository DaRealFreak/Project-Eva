#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route7
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
        sleep 5
        send {Shift}
        sleep 2500
        send {d up}
        sleep 2.3*1000
        send {a down}
        sleep 2*1000
        send {a up}
        sleep 1.4*1000
        send {d down}
        sleep 100
        send {d up}
        sleep 600
        send {d down}
        sleep 200
        send {d up}
        sleep 300
        send {d down}
        sleep 1.7*1000
        send {d up}
        sleep 0.2*1000
        send {d down}
        sleep 100
        send {d up}
        sleep 1.6*1000
        send {w up}
   }
}