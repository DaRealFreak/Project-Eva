#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route6
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
        sleep 400
        send {Shift}
        sleep 1.4*1000
        send {d up}
        sleep 500
        send {d down}
        sleep 100
        send {d up}
        sleep 750
        send {d down}
        sleep 1.5*1000
        send {d up}
        sleep 50
        send {a down}
        sleep 4*1000
        send {a up}
        sleep 50
        send {d down}
        sleep 700
        send {d up}
        sleep 1*1000
        send {d down}
        sleep 1.6*1000
        send {d up}
        sleep 500
        send {d down}
        sleep 1*1000
        send {d up}
        sleep 300
        send {a down}
        sleep 50
        send {a up}
        sleep 300
        send {a down}
        sleep 50
        send {a up}
        send {w up}
   }
}