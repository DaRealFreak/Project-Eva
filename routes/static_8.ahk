#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route8
{
    ; option to weight this route between 0-100
    Weight()
    {
        return 100
    }

    Run()
    {
        send {w down}
        sleep 200
        send {d down}
        sleep 100
        send {Shift}
        sleep 1.2*1000
        send {d up}
        sleep 250
        send {d down}
        sleep 125
        send {d up}
        sleep 200
        send {d down}
        sleep 150
        send {d up}
        sleep 100
        send {d down}
        sleep 125
        send {d up}
        sleep 300
        send {d down}
        sleep 250
        send {d up}
        sleep 2*1000
        send {a down}
        sleep 1.3*1000
        send {a up}
        sleep 200
        send {a down}
        sleep 100
        send {a up}
        sleep 200
        send {a down}
        sleep 100
        send {a up}
        sleep 1.4*1000
        send {d down}
        sleep 450
        send {d up}
        sleep 200
        send {d down}
        sleep 550
        send {d up}
        sleep 250
        send {d down}
        sleep 400
        send {d up}
        sleep 275
        send {d down}
        sleep 325
        send {d up}
        sleep 425
        send {d down}
        sleep 400
        send {d up}
        sleep 1.1*1000
        send {w up}
    }
}