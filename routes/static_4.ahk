#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route4
{
    ; option to weight this route between 0-100
    Weight()
    {
        return 100
    }

    Jump()
    {
        send {space down}
        sleep 80
        send {space up}
    }

    Run()
    {
        Sleep 1.1*1000
        Send {d down}
        sleep 150
        send {w down}
        sleep 150
        send {Shift}
        sleep 1*1000
        send {d up}
        sleep 750
        send {d down}
        sleep 750
        send {d up}
        sleep 2.5*1000
        send {a down}
        sleep 1.5*1000
        send {a up}
        sleep 1.8 * 1000
        send {d down}
        sleep 650
        send {d up}
        sleep 300
        send {d down}
        sleep 900
        send {d up}
        sleep 700
        send {d down}
        sleep 350
        send {d up}
        sleep 1*1000
        send {d down}
        sleep 150
        send {d up}
        sleep 250
        send {w up}
   }
}