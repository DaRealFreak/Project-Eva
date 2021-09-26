#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

/*
This class is used for differences in the user interfaces.
If the resolution and ClientConfiguration.xml are not identical you'll always have to change these settings
*/
class UserInterface
{
    ClickEasyMode()
    {
        MouseClick, left, 800, 600
    }

    ClickNormalMode()
    {
        MouseClick, left, 950, 600
    }

    MoveMouseOverMap()
    {
        MouseMove, 1636, 263
    }

    ClickWindstridePoint()
    {
        MouseClick, Left, 1636, 263
    }

    ; whenever you want to refresh your exp buff food (basically one of the last pixels which will become darker)
    IsBuffFoodIconVisible()
    {
        return Utility.GetColor(20,9) == "0x987B42"
    }

    ; some of the filled out bar in the loading screen on the bottom of the screen
    IsInLoadingScreen()
    {
        return Utility.GetColor(20,1063) == "0xFF7C00"
    }

    ; literally any UI element, just used for checking if we're out of the loading screen, I'm using here my unity bar
    IsOutOfLoadingScreen()
    {
        return Utility.GetColor(30,1062) == "0x000001"
    }

    ; check healthbar while not fully visible to see if eva spawned already
    IsEvaHealthbarVisible()
    {
        ; not targetable -> ~120 red value of healthbar
        ; targetable -> ~ 240 red value of healthbar
        Utility.GetColor(824,103, r)
        return r > 100 && r < 200
    }

    ; any skill of your class which requires a target to see if we can attack eva 
    IsEvaTargetable()
    {
        ; any target skill (if possible not used by auto combat or you'll need 2 skills)
        return Utility.GetColor(939,887) == "0x1C3B82" || Utility.GetColor(1034,887) == "0x593F93"
    }

    ; box icon of the dynamic quest
    IsDynamicRewardVisible()
    {
        return Utility.GetColor(1628,689) == "0x726B49"
    }

    ; check if the cc bar is close to black which indicates you can cc eva
    IsCcBarOpen()
    {
        Utility.GetColor(787, 126, r, g, b)
        return r < 50 && g < 50 && b < 50
    }

    ; any pixel on the exit portal
    IsExitPortalIconVisible()
    {
        return Utility.GetColor(1153,724) == "0xFFD700"
    }

    ; any pixel on the revive skil
    IsReviveVisible()
    {
        return Utility.GetColor(1038,899) == "0x6F542B"
    }
}