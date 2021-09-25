#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route3
{
    ; option to weight this route between 0-100
    Weight()
    {
        return 50
    }

    Jump()
    {
        send {space down}
        sleep 80
        send {space up}
    }

    Run()
    {
        ; start walking
        send {w down}
        send {d down}
        sleep 5
        send {Shift}
        sleep 0.5*1000

        Route3.Jump()

        sleep 1.8*1000
        send {d up}

        sleep 250

        Route3.Jump()

        sleep 2.1*1000

        send {a down}
        sleep 650

        Route3.Jump()

        send {a up}
        sleep 250
        
        sleep 1.8*1000

        Route3.Jump()

        sleep 1.8*1000

        send {d down}
        sleep 250

        Route3.Jump()

        sleep 1.8*1000

        send {d up}
        sleep 250

        send {a down}
        sleep 0.2*1000
        send {a up}

        sleep 1.2*1000

        send {w up}
        send {Shift}
        sleep 500
   }
}