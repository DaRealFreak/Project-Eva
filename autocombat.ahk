SetKeyDelay, -1, -1
SetWinDelay, -1

class AutoCombat
{
    StartAutoCombat()
    {
        log.addLogEntry("$time: activating auto combat")
        tooltip % "activating auto combat"

        if (Configuration.UseCombatSpeedHack()) {
            Configuration.EnableCombatSpeedhack()
        }

        Configuration.ToggleAutoCombat()

        return AutoCombat.MoveToEva()
    }

    MoveToEva()
    {
        ; wait until auto combat reached eva and attacks her
        log.addLogEntry("$time: autocombat moving to eva")
        tooltip % "autocombat moving to eva"
        while (!UserInterface.IsEvaTargetable()) {
            AutoCombat.CheckForDeath()
            sleep 25
        }

        return AutoCombat.FightEva()
    }

    FightEva()
    {
        ; phase start jump untargetability
        log.addLogEntry("$time: autocombat until phase jump")
        tooltip % "autocombat until phase jump"
        while (UserInterface.IsEvaTargetable()) {
            AutoCombat.CheckForDeath()
            sleep 25
        }

        ; iframe phase jump
        log.addLogEntry("$time: iframe phase jump")
        tooltip % "iframe phase jump"
        sleep 250
        loop, 10 {
            Combat.Iframe()
            sleep 5
        }

        ; wait until we can attack her again
        log.addLogEntry("$time: wait until we can target eva again after phase jump")
        tooltip % "wait until we can target eva again after phase jump"
        while (!UserInterface.IsEvaTargetable()) {
            AutoCombat.CheckForDeath()
            sleep 25
        }

        ; wait until she jumps to the sides
        log.addLogEntry("$time: autocombat until phase")
        tooltip % "autocombat until phase"
        while (UserInterface.IsEvaTargetable()) {
            AutoCombat.CheckForDeath()
            sleep 25
        }

        return AutoCombat.PhaseCombat()
    }

    CheckForDeath()
    {
        if (UserInterface.IsReviveVisible()) {
            log.addLogEntry("$time: died during auto combat")

            Configuration.ClipShadowPlay()
            sleep 250

            while (!UserInterface.IsInLoadingScreen()) {
                send 4
                sleep 250
            }

            ProjectEva.WaitLoadingScreen()

            return ProjectEva.FailSafe()
        }
    }

    PhaseCombat()
    {
        ; let auto combat do auto combat things during phase
        log.addLogEntry("$time: autocombat during phase")
        tooltip % "autocombat during phase"
        sleep 34*1000

        return AutoCombat.FinishFight()
    }

    FinishFight()
    {
        ; wait until auto combat targets eva again and is out of cc
        log.addLogEntry("$time: wait until autocombat targets eva for cc")
        tooltip % "wait until autocombat targets eva for cc"
        while (!UserInterface.IsEvaTargetable()) {
            AutoCombat.CheckForDeath()
            sleep 25
        }

        ; for 1 second spam the cc skill in case of gcd groups
        log.addLogEntry("$time: cc phase end")
        tooltip % "cc phase end"
        loop, 100 {
            Combat.CcSkill()
            sleep 10
        }

        ; wait until auto combat finishes
        log.addLogEntry("$time: autocombat until the end")
        tooltip % "autocombat until the end"
        while (!UserInterface.IsDynamicRewardVisible()) {
            if (!UserInterface.IsEvaTargetable()) {
                sleep 250
                loop, 10 {
                    Combat.Iframe()
                    sleep 5
                }
            }
            
            AutoCombat.CheckForDeath()

            sleep 25
        }

        ; wait until we picked up possible loot and went back to the portal
        tooltip % ""

        sleep 5*1000 / (Configuration.UseCombatSpeedHack() ? Configuration.CombatSpeedhackValue() : 1)

        if (Configuration.UseCombatSpeedHack()) {
            Configuration.DisableCombatSpeedhack()
        }

        Configuration.ToggleAutoCombat()

        return AutoCombat.ExitDungeon()
    }

    ExitDungeon()
    {
        ProjectEva.CheckRepair()

        while (!UserInterface.IsExitPortalIconVisible()) {
            send {left down}
            sleep 0.1*1000
            send {left up}
        }

        return ProjectEva.UseExitPortal()
    }
}