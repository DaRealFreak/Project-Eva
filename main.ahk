SetKeyDelay, -1, -1
SetWinDelay, -1

#Include %A_ScriptDir%\lib\utility.ahk
#Include %A_ScriptDir%\lib\log.ahk

#Include %A_ScriptDir%\autocombat.ahk
#Include %A_ScriptDir%\class.ahk
#Include %A_ScriptDir%\config.ahk
#Include %A_ScriptDir%\ui.ahk
#Include %A_ScriptDir%\hotkeys.ahk
#Include %A_ScriptDir%\camera.ahk

#Include %A_ScriptDir%\routes\failsafe.ahk
#Include %A_ScriptDir%\routes\static_1.ahk
#Include %A_ScriptDir%\routes\static_2.ahk
#Include %A_ScriptDir%\routes\static_3.ahk
#Include %A_ScriptDir%\routes\static_4.ahk
#Include %A_ScriptDir%\routes\static_5.ahk
#Include %A_ScriptDir%\routes\static_6.ahk
#Include %A_ScriptDir%\routes\static_7.ahk
#Include %A_ScriptDir%\routes\static_8.ahk
#Include %A_ScriptDir%\routes\static_9.ahk
#Include %A_ScriptDir%\routes\static_10.ahk
#Include %A_ScriptDir%\routes\static_11_dance.ahk
#Include %A_ScriptDir%\routes\static_12.ahk
#Include %A_ScriptDir%\routes\static_13.ahk
#Include %A_ScriptDir%\routes\static_14.ahk
#Include %A_ScriptDir%\routes\static_15.ahk
#Include %A_ScriptDir%\routes\static_16.ahk
#Include %A_ScriptDir%\routes\static_17.ahk
#Include %A_ScriptDir%\routes\static_18_dance.ahk
#Include %A_ScriptDir%\routes\static_19.ahk
#Include %A_ScriptDir%\routes\static_20.ahk
#Include %A_ScriptDir%\routes\static_21.ahk
#Include %A_ScriptDir%\routes\static_22.ahk
#Include %A_ScriptDir%\routes\static_23.ahk
#Include %A_ScriptDir%\routes\static_24.ahk
#Include %A_ScriptDir%\routes\static_25.ahk
#Include %A_ScriptDir%\routes\static_26.ahk
#Include %A_ScriptDir%\routes\static_27.ahk
#Include %A_ScriptDir%\routes\static_28.ahk
#Include %A_ScriptDir%\routes\static_29.ahk
#Include %A_ScriptDir%\routes\static_30.ahk

class ProjectEva
{
    static runCount := 0
    static lastRoute := -1
    static ranFailSafeRoute := false

    ; function we can call when we expect a loading screen and want to wait until the loading screen is over
    WaitLoadingScreen()
    {
        log.addLogEntry("$time: wait for loading screen")

        ; just sleep while we're in the loading screen
        while (UserInterface.IsInLoadingScreen()) {
            sleep 5
        }

        ; check any of the skills if they are visible
        while (!UserInterface.IsOutOfLoadingScreen()) {
            sleep 5
        }

        sleep 250
    }

    ; simply check for the buff food and use 
    CheckBuffFood()
    {
        log.addLogEntry("$time: checking buff food")

        ; check if buff food icon is visible
        if (!UserInterface.IsBuffFoodIconVisible()) {
            log.addLogEntry("$time: using buff food")

            Configuration.UseBuffFood()
            sleep 750
            send {w down}
            sleep 50
            send {w up}
            sleep 200
        }
    }

    ; walk to the eva sword from exit spawn
    EnterDungeon()
    {
        log.addLogEntry("$time: entering dungeon, runs done: " this.runCount)

        if (Configuration.ManualWalking()) {
            while (!UserInterface.IsExitPortalIconVisible()) {
                sleep 25
            }
        } else if (this.ranFailSafeRoute) {
            ; always use route 1 after fail safe to not have to test every route twice
            log.addLogEntry("$time: using route #1, due to failsafe being triggered")

            this.lastRoute := 1
            this.ranFailSafeRoute := false

            sleep 250
            Route1.Run()
        } else {
            ; select a new route until we get one different from the previous run
            Random, route, 1, 30
            Random, weight, 0, 100
            routeClass := "Route" route

            while (route == this.lastRoute || (%routeClass%.Weight() - weight) < 0) {
                Random, route, 1, 30
                Random, weight, 0, 100
                routeClass := "Route" route
            }

            log.addLogEntry("$time: using route #" route ", rolled with weight: " weight)
            this.lastRoute := route

            sleep 250
            %routeClass%.Run()
        }

        return ProjectEva.SelectMode()
    }

    SelectMode()
    {
        sleep 750

        ; jump on the sword if not visible yet
        if (!UserInterface.IsExitPortalIconVisible()) {
            sleep 500
            send {space down}
            send {w down}
            sleep 500
            send {w up}
            send {space up}
        }

        ; turn around until we can see the sword or run into the fail safe
        start := A_TickCount
        while (!UserInterface.IsExitPortalIconVisible()) {
            if (AutoCombat.CheckForDeathOrTimeout(start, 6)) {
                return ProjectEva.FailSafe()
            }

            send {left down}
            sleep 0.2*1000
            send {left up}
        }

        send f
        sleep 750

        ; it sometimes didn't register the click, safety loop here
        loop, 4 {
            if (Configuration.UseNormalMode()) {
                UserInterface.ClickNormalMode()
            } else {
                UserInterface.ClickEasyMode()
            }
            sleep 250
        }

        start := A_TickCount
        while (!UserInterface.IsInLoadingScreen()) {
            ; no idea when this normally happens
            if (A_TickCount > start + 15 * 1000) {
                log.addLogEntry("$time: entering dungeon took longer than expected, stopping")

                ; record shadowplay since this shouldn't happen usually
                Configuration.ClipShadowPlay()

                return ProjectEva.FailSafe()
            }

            sleep 250
        }

        ProjectEva.WaitLoadingScreen()

        ; check for buff food inside before we start running into position
        ProjectEva.CheckBuffFood()

        if (this.runCount == 0) {
            if (!Configuration.ManualWalking()) {
                ; safety initial repair before starting the runs in case we forget it
                ProjectEva.RepairWeapon()
            }
        }

        return ProjectEva.MoveToEva()
    }

    MoveToEva()
    {
        log.addLogEntry("$time: moving to eva")

        if (Configuration.UseAutoCombat()) {
            if (Configuration.UseMovementSpeedHack()) {
                loop, 5 {
                    Configuration.EnableMovementSpeedhack()
                    sleep 25
                }
            }

            ; we can't move somehow during the first few seconds
            sleep 2*1000
            send {w down}
            send {ShiftDown}

            sleep 4.3*1000 / (Configuration.UseMovementSpeedHack() ? Configuration.MovementSpeedhackValue() : 1)

            if (Configuration.UseMovementSpeedHack()) {
                loop, 5 {
                    Configuration.DisableMovementSpeedhack()
                    sleep 25
                }
            }

            send {w up}
            send {ShiftUp}

            return AutoCombat.StartAutoCombat()
        } else {
            send {w down}
            while (!UserInterface.IsEvaHealthbarVisible()) {
                sleep 25
            }
            send {w up}

            while (!UserInterface.IsEvaTargetable()) {
                sleep 25
            }

            return ProjectEva.FightEva()
        }
    }

    FightEva()
    {
        log.addLogEntry("$time: fighting eva")

        Combat.Prestack()
        Combat.ApproachEva()

        start := A_TickCount
        phaseStarted := false
        phaseChanged := A_TickCount - 2*1000
        while (A_TickCount < start + 18 * 1000) {
            if (!UserInterface.IsEvaTargetable()) {
                ; only change phase at least 3 seconds after the last change
                if (!phaseStarted && phaseChanged + 3*1000 < A_TickCount) {
                    phaseChanged := A_TickCount
                    phaseStarted := true

                    sleep 250
                    loop, 10 {
                        Combat.Iframe()
                        sleep 5
                    }

                    ; wait until we can target her again
                    while (!UserInterface.IsEvaTargetable()) {
                        Combat.DpsSkills()
                        Combat.AutoCombat()
                        sleep 25
                    }
                } else {
                    ; break out of combat on the 2nd untargetability which indicates her moving to the sides
                    break
                }
            }

            Combat.DpsSkills()

            Combat.AutoCombat()
        }

        log.addLogEntry("$time: eva is moving to the sides, waiting")

        return ProjectEva.WaitPhase()
    }

    WaitPhase()
    {
        ; since movement is instant we have no rng timing and can just wait 34 seconds before tabbing
        if (Configuration.UseTabEscapeForCC()) {
            sleep 34*1000
        } else {
            sleep 32*1000
        }

        log.addLogEntry("$time: tabbing to cc eva phase end")
        loop, 2 {
            if (Configuration.UseTabEscapeForCC()) {
                send {tab}
            } else {
                Combat.CcSkill()
            }
            sleep 25
        }

        Combat.EnterStance()

        return ProjectEva.FinishFight()
    }

    FinishFight()
    {
        while (true) {
            ; dynamic reward visible we done
            if (UserInterface.IsDynamicRewardVisible()) {
                return ProjectEva.ExitDungeon()
            }

            if (!UserInterface.IsEvaTargetable()) {
                sleep 250
                loop, 10 {
                    Combat.Iframe()
                    sleep 5
                }
            }

            if (UserInterface.IsReviveVisible()) {
                log.addLogEntry("$time: died while trying to finish the fight, reviving and retrying")

                while (!UserInterface.IsInLoadingScreen()) {
                    send 4
                    sleep 250
                }

                ProjectEva.WaitLoadingScreen()

                ; sleep a bit for iframes/skills coming up again
                sleep 15*1000

                ; walk back up to eva
                send {w down}
                while (!UserInterface.IsEvaTargetable()) {
                    sleep 25
                }
                send {w up}

                return ProjectEva.FightEva()
            }

            Combat.AutoCombat()
        }
    }

    CheckRepair()
    {
        this.runCount += 1

        ; repair weapon after the defined amount of runs
        if (mod(this.runCount, Configuration.UseRepairToolsAfterRunCount()) == 0) {
            ProjectEva.RepairWeapon()
        }
    }

    ExitDungeon()
    {
        log.addLogEntry("$time: exiting dungeon")

        ProjectEva.CheckRepair()

        send {w down}

        start := A_TickCount
        while (true) {
            ; exit portal icon on f
            if (UserInterface.IsExitPortalIconVisible()) {
                break
            }

            ; no idea when this normally happens
            if (A_TickCount > start + 20 * 1000) {
                log.addLogEntry("$time: exiting dungeon took longer than expected, stopping")

                ; record shadowplay since this shouldn't happen usually
                Configuration.ClipShadowPlay()

                return ProjectEva.FailSafe()
            }

            sleep 5
        }

        send {w up}
        sleep 250

        return ProjectEva.UseExitPortal()
    }

    UseExitPortal()
    {
        if (Configuration.UseNoText()) {
            loop, 4 {
                UserInterface.ClickDynamicQuest()
            }
            sleep 250
        }

        ; spam y to continue quest and accept dynamic
        loop, 45 {
            send yf
            sleep 25
        }

        ; if daily 3 additional rewards got reached decline
        sleep 250
        send n
        sleep 100

        if (Configuration.UseMovementSpeedHack()) {
            loop, 5 {
                Configuration.EnableMovementSpeedhack()
                sleep 25
            }
        }

        start := A_TickCount
        while (!UserInterface.IsInLoadingScreen()) {
            if (AutoCombat.CheckForDeathOrTimeout(start)) {
                return ProjectEva.FailSafe()
            }

            send f
            sleep 250
        }

        if (Configuration.UseMovementSpeedHack()) {
            loop, 5 {
                Configuration.DisableMovementSpeedhack()
                sleep 25
            }
        }

        ; wait until we're out and end this loop
        ProjectEva.WaitLoadingScreen()

        return true
    }

    ; use windstride from mini map and walk back to the spawn point in front of eva
    ; FixMe: currently configured for 25 points in movement speed, change to 0 and abuse speed hack
    FailSafe()
    {
        log.addLogEntry("$time: using fail safe to return to eva exit spawn")

        if (Configuration.UseMovementSpeedHack()) {
            loop, 5 {
                Configuration.DisableMovementSpeedhack()
                sleep 25
            }
            sleep 250
        }

        if (Configuration.UseCombatSpeedHack()) {
            loop, 5 {
                Configuration.DisableCombatSpeedhack()
                sleep 25
            }
            sleep 250
        }

        ; check if the active window is still bns
        WinGet, currentProcess, ProcessName, A
        if (currentProcess != "BNSR.exe") {
            log.addLogEntry("$time: Blade & Soul is not the active window, exiting application")
            ExitApp
        }

        ; get out of possible quest windows
        send {Esc}
        sleep 500

        ; close possible open menu
        send {w down}
        sleep 100
        send {w up}
        sleep 250

        send {AltDown}
        sleep 250

        UserInterface.MoveMouseOverMap()
        sleep 250

        ; zoom out completely
        loop, 5 {
            MouseClick, WheelUp
            sleep 75
        }

        ; zoom in once
        MouseClick, WheelDown

        start := A_TickCount
        while (!UserInterface.IsInLoadingScreen()) {
            send {AltDown}
            sleep 250
            UserInterface.ClickWindstridePoint()
            sleep 250

            if (AutoCombat.CheckForDeathOrTimeout(start)) {
                return ProjectEva.FailSafe()
            }

            ; spam y to continue quest and accept dynamic or to confirm windstride
            loop, 45 {
                send yf
                sleep 25
            }

            ; if daily 3 additional rewards got reached decline and go for the confirmation in the next loop
            sleep 250
            send n
            sleep 100
        }

        ProjectEva.WaitLoadingScreen()

        ; let stuff load on crappy laptops/computers
        sleep 750

        FailSafeRoute.Run()
        this.ranFailSafeRoute := true

        return ProjectEva.EnterDungeon()
    }

    ; repair the weapon
    RepairWeapon()
    {
        log.addLogEntry("$time: repairing weapon")

        start := A_TickCount
        while (A_TickCount < start + 5.5*1000) {
            Configuration.UseRepairTools()
            sleep 5
        }
    }

    Exiting()
    {
        Utility.ReleaseAllKeys()

        if (Configuration.ShutdownComputerAfterCrash()) {
            WinGet, currentProcess, ProcessName, A
            if (currentProcess != "BNSR.exe") {
                run, %comspec% /c shutdown –s –t 60
            }
        }
    }
}