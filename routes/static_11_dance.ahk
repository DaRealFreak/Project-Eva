#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Route11
{
    ; option to weight this route between 0-100
    Weight()
    {
        ; 5% chance if we roll this route to actually take it, since static_1 is equal from pathing to this route
        return 5
    }

    Run()
    {
        ; start walking
        send {w down}
        send {d down}
        sleep 5
        ; start sprinting
        send {Shift}
        sleep 2.8*1000
        send {d up}
        ; we walked enough to the right
        send {w down}
        sleep 2*1000
        ; walk to the left in the hallway
        send {a down}
        sleep 2.25*1000
        send {a up}
        ; continue straight for a while
        sleep 2.1*1000
        ; go to the right on the height of the sword
        send {d down}
        sleep 2.05*1000
        send {d up}
        ; final part until we reach the sword
        sleep 2.1*1000
        send {w up}
        send {Shift}
        sleep 500

        ; scout for 2 seconds
        send {RAlt down}
        sleep 250
        send 2
        sleep 250
        send {RAlt up}
        sleep 3*1000
   }
}