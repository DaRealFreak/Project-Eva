#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#IfWinActive ahk_class UnrealWindow
F1::
    MouseGetPos, mouseX, mouseY
    color := Utility.GetColor(mouseX, mouseY, r, g, b)
    tooltip, Coordinate: %mouseX%`, %mouseY% `nHexColor: %color%`nR:%r% G:%g% B:%b%
    Clipboard := "Utility.GetColor(" mouseX "," mouseY ") == `""" color "`"""
    SetTimer, RemoveToolTip, -5000
    return

RemoveToolTip:
    tooltip
    return

#IfWinActive ahk_class UnrealWindow
Numpad0::
    global log := new LogClass("project_eva")
    log.initalizeNewLogFile(1)
    log.addLogEntry("$time: starting project eva")

    ; safety initial repair before starting the runs in case we forget it
    ProjectEva.RepairWeapon()

    loop {
        if (!ProjectEva.EnterDungeon()) {
            break
        }
        sleep 250
    }

    return

Numpad1::
    global log := new LogClass("project_eva")
    log.initalizeNewLogFile(1)
    log.addLogEntry("$time: starting project eva")
    ProjectEva.MoveToEva()
    return

NumpadDel::Reload
NumpadEnter::ExitApp