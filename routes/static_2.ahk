#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route2
{
    ; option to weight this route between 0-100
    Weight()
    {
        return 100
    }

    Run()
    {
        ; start walking
        send {w down}
        send {d down}
        sleep 5
        send {Shift}
        sleep 2*1000
        send {d up}
        send {w down}
        sleep 4*1000

        send {a down}
        sleep 1.4*1000
        send {a up}

        sleep 1.4*1000

        send {d down}
        sleep 1.5*1000
        send {d up}

        sleep 1*1000

        send {d down}
        sleep 0.5*1000
        send {d up}

        sleep 1.3*1000
        send {w up}
        send {Shift}
        sleep 500
   }
}