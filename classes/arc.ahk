#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Archer ONLY works with Auto Combat due to moving all the time
class Combat
{
    ; really simple auto combat, just spam keys, you can also add more complex checks if you ever want to, most of the times this is enough
    AutoCombat()
    {
    }

    ; prestacking function for bosses
    Prestack()
    {
    }

    ; in case you don't want to waste your biggest burst skill on the eva shield you can define the fight opener here
    ApproachEva()
    {
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
        send {tab}
    }

    ; skills you want to spam during the 1 second duration where you have to cc eva at phase end
    CcSkill()
    {
        send 2
    }
}