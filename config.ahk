#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

/*
This class is primarily used for specific keys or optional settings like speedhack, cross server etc
*/
class Configuration 
{
    ; option to use random sleeps at the sword to be more inconspicuous
    UseRandomSleeps()
    {
        return true
    }

    ; time to randomly sleep at the sword
    RandomSleepTime()
    {
        ; sleep between 1.5 and 4 seconds at the sword
        Random, sleepyTime, 1.5*1000, 4*1000
        return sleepyTime
    }

    ; option to use breaks after set amount of runs
    UseBreaks()
    {
        return true
    }

    ; time to take a break at the sword
    BreakTime()
    {
        ; take a break between 3 and 10 minutes
        Random, breakyTime, 3*60*1000, 10*60*1000
        return breakyTime
    }

    ; after how many runs should we take a break
    BreakAfterRuns()
    {
        ; take a break after every 7 to 15 runs
        Random, breakAfterRuns, 7, 15
        return breakAfterRuns
    }

    ; failsafe is obvious outside, so we can configure if we want to deactivate it
    UseFailsafeOutside()
    {
        return false
    }

    ; shut down the computer if no bns processes are found anymore (dc or maintenance)
    ShutdownComputerAfterCrash()
    {
        return false
    }

    ; walk manually until you see the portal icon of the sword
    ManualWalking()
    {
        return false
    }

    ; should the character even use buff food
    ShouldUseBuffFood()
    {
        return true
    }

    UseNoText()
    {
        return true
    }

    ; hotkey where the buff food is placed
    UseBuffFood()
    {
        send 6
    }

    ; hotkey where the field repair hammers are placed
    UseRepairTools()
    {
        send 7
    }

    ; after how many runs should we repair our weapon
    UseRepairToolsAfterRunCount()
    {
        return 20
    }

    ; which mode is being used: normal or easy (hard still wipes so not possible)
    UseNormalMode()
    {
        return true
    }

    ; use auto combat (requires bin file modification/multi tool option) or play it clean without game modifications
    UseAutoCombat()
    {
        return true
    }

    UseTabEscapeForCC()
    {
        return false
    }

    UseCombatSpeedHack()
    {
        return true
    }

    UseMovementSpeedHack()
    {
        return true
    }

    ToggleAutoCombat()
    {
        send {ShiftDown}{f4 down}
        sleep 250
        send {ShiftUp}{f4 up}
    }

    ; enable movement speed hack (sanic or normal ce speedhack)
    EnableMovementSpeedhack()
    {
        send {Numpad3}
    }

    ; disable movement speed hack (sanic or normal ce speedhack)
    DisableMovementSpeedhack()
    {
        send {Numpad4}
    }

    ; configured speed value
    MovementSpeedhackValue()
    {
        return 4.0
    }

    ; enable combat speed hack (shouldn't interfere with cooldowns), leave empty if you don't use it
    EnableCombatSpeedhack()
    {
        send {Numpad1}
    }

    ; disable combat speed hack (shouldn't interfere with cooldowns), leave empty if you don't use it
    DisableCombatSpeedhack()
    {
        send {Numpad2}
    }

    ; configured speed value
    CombatSpeedhackValue()
    {
        return 4.5
    }

    ; shortcut for shadowplay clip in case we want to debug how we got stuck or got to this point
    ClipShadowPlay()
    {
        send {alt down}{f10 down}
        sleep 1000
        send {alt up}{f10 up}
    }
}