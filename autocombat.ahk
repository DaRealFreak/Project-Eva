SetKeyDelay, -1, -1
SetWinDelay, -1

class AutoCombat
{
    StartAutoCombat()
    {
        log.addLogEntry("$time: activating auto combat")

        if (Configuration.UseCombatSpeedHack()) {
            loop, 5 {
                Configuration.EnableCombatSpeedhack()
                sleep 25
            }
        }

        Configuration.ToggleAutoCombat()

        return AutoCombat.MoveToEva()
    }

    MoveToEva()
    {
        ; wait until auto combat reached eva and attacks her
        log.addLogEntry("$time: autocombat moving to eva")
        start := A_TickCount
        while (!UserInterface.IsEvaTargetable()) {
            if (AutoCombat.CheckForDeathOrTimeout(start)) {
                return ProjectEva.FailSafe()
            }
            sleep 25
        }

        return AutoCombat.FightEva()
    }

    FightEva()
    {
        ; phase start jump untargetability
        log.addLogEntry("$time: autocombat until phase jump")
        start := A_TickCount
        while (UserInterface.IsEvaTargetable()) {
            if (AutoCombat.CheckForDeathOrTimeout(start)) {
                return ProjectEva.FailSafe()
            }
            sleep 25
        }

        ; iframe phase jump
        log.addLogEntry("$time: iframe phase jump")
        sleep 250
        loop, 10 {
            Combat.Iframe()
            sleep 5
        }

        ; wait until we can attack her again or check started max 3 seconds ago (so we don't get stuck if we get knocked back)
        log.addLogEntry("$time: wait until we can target eva again after phase jump")
        start := A_TickCount
        while (!UserInterface.IsEvaTargetable() || A_TickCount > start + 3*1000) {
            sleep 25
        }

        ; wait until she jumps to the sides
        log.addLogEntry("$time: autocombat until phase")
        start := A_TickCount
        while (UserInterface.IsEvaTargetable()) {
            if (AutoCombat.CheckForDeathOrTimeout(start)) {
                return ProjectEva.FailSafe()
            }
            sleep 25
        }

        return AutoCombat.PhaseCombat()
    }

    CheckForDeathOrTimeout(start)
    {
        if (A_TickCount > start + 45 * 1000) {
            log.addLogEntry("$time: action too unexpectedly long, using failsafe")

            return true
        }

        if (UserInterface.IsReviveVisible()) {
            log.addLogEntry("$time: died during auto combat")

            Configuration.ClipShadowPlay()
            sleep 250

            while (!UserInterface.IsInLoadingScreen()) {
                send 4
                sleep 250
            }

            ProjectEva.WaitLoadingScreen()

            return true
        }

        return false
    }

    PhaseCombat()
    {
        ; let auto combat do auto combat things during phase
        log.addLogEntry("$time: autocombat during phase")
        sleep 31*1000

        return AutoCombat.FinishFight()
    }

    FinishFight()
    {
        ; wait until auto combat finishes
        log.addLogEntry("$time: autocombat until the end")
        start := A_TickCount
        while (!UserInterface.IsDynamicRewardVisible()) {
            if (!UserInterface.IsEvaTargetable()) {
                sleep 250
                loop, 10 {
                    Combat.Iframe()
                    sleep 5
                }
            } else {
                if (UserInterface.IsCcBarOpen()) {
                    ; for 1 second spam the cc skill in case of gcd groups
                    log.addLogEntry("$time: cc phase end")
                    loop, 100 {
                        Combat.CcSkill()
                        sleep 10
                    }
                }
            }
            
            if (AutoCombat.CheckForDeathOrTimeout(start)) {
                return ProjectEva.FailSafe()
            }

            sleep 25
        }

        ; wait until we picked up possible loot and went back to the portal
        sleep 5*1000 / (Configuration.UseCombatSpeedHack() ? Configuration.CombatSpeedhackValue() : 1)

        if (Configuration.UseCombatSpeedHack()) {
            loop, 5 {
                Configuration.DisableCombatSpeedhack()
                sleep 25
            }
        }

        Configuration.ToggleAutoCombat()

        return AutoCombat.ExitDungeon()
    }

    ExitDungeon()
    {
        ProjectEva.CheckRepair()

        start := A_TickCount
        while (!UserInterface.IsExitPortalIconVisible()) {
            if (AutoCombat.CheckForDeathOrTimeout(start)) {
                return ProjectEva.FailSafe()
            }

            send {left down}
            sleep 0.1*1000
            send {left up}
        }

        return ProjectEva.UseExitPortal()
    }
}