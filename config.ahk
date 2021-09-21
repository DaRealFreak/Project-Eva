#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

/*
This class is primarily used for specific keys or optional settings like speedhack, cross server etc
*/
class Configuration 
{
    ; should the character even use buff food
    ShouldUseBuffFood()
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

    UseNormalModeAutoCombat()
    {
        return false
    }

    ToggleAutoCombat()
    {
        send {ShiftDown}{f4 down}
        sleep 1000
        send {ShiftUp}{f4 up}
    }

    ; shortcut for shadowplay clip in case we want to debug how we got stuck or got to this point
    ClipShadowPlay()
    {
        send {alt down}{f10 down}
        sleep 1000
        send {alt up}{f10 up}
    }
}