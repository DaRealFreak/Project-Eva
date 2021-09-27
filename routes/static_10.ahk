#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route10
{
    ; option to weight this route between 0-100
    Weight()
    {
        return 100
    }

    Run()
    {
        sleep 450
        send {d down}
        sleep 25
        send {w down}
        sleep 100
        send {Shift}
        sleep 1.7*1000
        send {d up}
        sleep 1*1000
        send {d down}
        sleep 150
        send {d up}
        sleep 1.8*1000
        send {a down}
        sleep 100
        send {Space down}
        sleep 150
        send {a up}
        sleep 125
        send {Space up}
        sleep 100
        send {a down}
        sleep 825
        send {a up}
        sleep 900
        send {Space down}
        sleep 200
        send {Space up}
        sleep 550
        send {d down}
        sleep 1.3*1000
        send {d up}
        sleep 250
        send {d down}
        sleep 750
        send {d up}
        sleep 450
        send {d down}
        sleep 300
        send {d up}
        sleep 250
        send {Space down}
        sleep 200
        send {Space up}
        sleep 100
        send {d down}
        sleep 125
        send {d up}
        sleep 300
        send {w up}
        sleep 400
        send {d down}
        sleep 75
        send {w down}
        sleep 50
        send {d up}
        sleep 325
        send {w up}
        sleep 500
        send {d down}
        sleep 50
        send {w down}
        sleep 50
        send {d up}
        sleep 50
        send {w up}
    }
}