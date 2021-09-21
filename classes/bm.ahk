#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Timings
{
    ; bm doesn't really have animation locks but other classes may have some we should wait for before we try looting the boss
    PossibleAnimationLocks()
    {
        return 0.5
    }

    ; time to reach loot, only really needed for range classes who have no approach skill and could be 
    WalkToLoot()
    {
        return 0.5
    }
}

class Combat
{
    ; if you can prestack something like lux, sunsparks or whatever you can do so here, bm can't, so just an example how you can duplicate funcionality
    PrestackMiniBoss()
    {
        Combat.Prestack()
    }

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

    ; both bosses can't be range tanked, approach them here
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

    ; after tabbing we may have to enter a stance again (f.e. bm)
    EnterStance()
    {
        loop, 10 {
            send {tab}
            sleep 150
        }
    }

    ; skills you don't want to use on the mini boss like starstrike/bluebuff/fireworks etc but want to use in the real fight
    DpsSkills()
    {
        ; starstrike
        send {tab}
        sleep 5

        ; my talisman is bound to 9
        send 9
        sleep 5
    }

    ; iframe you want to use for phase jump/knockdown attack of boss 1 and boss 2, preferred bubble iframe, else add a sleep duration
    Iframe()
    {
        send c
    }

    CcSkill()
    {
        send 3
    }

    ; whatever you want to do at the end of a fight, I use it to hmb for additional movement speed
    EndFight()
    {
        ; get out of flock stance
        send y
        sleep 500

        ; block
        send 1
        sleep 500

        ; hmb
        send f
        sleep 5
    }
}