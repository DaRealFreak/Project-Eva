#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class FailSafeRoute
{
    Run()
    {
        send {a down}
        sleep 0.75*1000

        ; start walking
        send {w down}
        sleep 5
        send {Shift}

        sleep 10.5*1000

        send {a up}

        sleep 1.75*1000

        send {w up}
        send {Shift}
        sleep 500
   }
}