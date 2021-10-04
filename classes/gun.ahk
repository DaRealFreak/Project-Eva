#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Combat
{
    ; really simple auto combat, just spam keys, you can also add more complex checks if you ever want to, most of the times this is enough
    AutoCombat()
    {
        send 4
        sleep 5
        send t
        sleep 5
        send f
        sleep 5
        send v
        sleep 5
        send 3
        sleep 5
    }

    ; prestacking function for bosses
    Prestack()
    {
    }

    ; in case you don't want to waste your biggest burst skill on the eva shield you can define the fight opener here
    ApproachEva()
    {
        send {w Down}
        sleep 1650
        send {w Up}
        sleep 100
        send b
        sleep 200
        send c
        sleep 200
        send {tab}
        sleep 1000
        send 3
        sleep 150
        send v
        sleep 150
    }

    ; after tabbing we may have to enter a stance again (f.e. bm)
    EnterStance()
    {
    }

    ; long cd skills you don't want to use during the last part of the fight like starstrike/sb/fireworks etc
    DpsSkills()
    {
    }

    ; iframe you want to use for phase start jump of eva, preferred bubble iframe, else add a sleep duration
    Iframe()
    {
        send x
    }

    ; skills you want to spam during the 1 second duration where you have to cc eva at phase end
    CcSkill()
    {
        send 2
    }
}