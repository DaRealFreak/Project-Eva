#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route9
{
    ; option to weight this route between 0-100
    Weight()
    {
        return 100
    }

    Run()
    {
        ; start walking
        sleep 400
        send {w down}
        send {d down}
        sleep 5
        send {ShiftDown}
    
        loop, 3 {
            send {Space down}
            sleep 100
            send {Space up}
        }
    
        sleep 2.15*1000
    
        send {d up}
        send {w up}
        send {ShiftUp}
        sleep 10
        send {w down}

        loop, 3 {
            send {ShiftDown}
            sleep 250
        }

        sleep 100
        send {space down}
        sleep 100
        send {space up}
        sleep 1.8*1000
        send {a down}
        sleep 100
        send {space down}
        sleep 100
        send {space up}
        sleep 1.8*1000
        send {a up}
        send {w up}
        send {ShiftUp}
        sleep 10
        send {w down}

        loop, 3 {
            send {ShiftDown}
            sleep 250
        }

        sleep 1*1000
        send {d down}
        sleep 100
        send {space down}
        sleep 100
        send {space up}
        sleep 1.98*1000
        send {d up}
        send {w up}
        send {ShiftUp}

        send {w down}

        sleep 300
        loop, 3 {
            send {space down}
            sleep 0.90*1000
            send {space up}
        }

        sleep 300
        send {w up}
        sleep 750
    }
}