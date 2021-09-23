#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Combat
{
    ; really simple auto combat, just spam keys, you can also add more complex checks if you ever want to, most of the times this is enough
    AutoCombat()
    {
        send r
        sleep 5
        send t
        sleep 5
        send 4
        sleep 5
        send v
        sleep 5
    }

    ; prestacking function for bosses
    Prestack()
    {
    }

    ; in case you don't want to waste your biggest burst skill on the eva shield you can define the fight opener here
    ApproachEva()
    {
        ; go into flock stance
        send {tab}
        sleep 350

        ; use e dash
        send e
        sleep 250

        ; cancel it with the target approach (we keep the iframe duration from the e dash for our 2 approach)
        send 2
        sleep 750

        ; make sure to start with spirit vortex
        send v
        sleep 150
    }

    ; you can either tab early, dps a bit and manually set a cc skill here or just use the tab escape (fck sins and warlocks lol)
    PhaseEndCC()
    {
        send 3
    }

    ; after tabbing we may have to enter a stance again (f.e. bm)
    EnterStance()
    {
        loop, 10 {
            send {tab}
            sleep 150
        }
    }

    ; long cd skills you don't want to use during the last part of the fight like starstrike/sb/fireworks etc
    DpsSkills()
    {
        ; starstrike
        send {tab}
        sleep 5

        ; my talisman is bound to 9
        send 9
        sleep 5
    }

    ; iframe you want to use for phase start jump of eva, preferred bubble iframe, else add a sleep duration
    Iframe()
    {
        send c
    }

    ; skills you want to spam during the 1 second duration where you have to cc eva at phase end
    CcSkill()
    {
        send {tab}
        sleep 5
        send 3
    }
}