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

    ; first check for buff food on starting since we skip the running part
    ProjectEva.CheckBuffFood()

    if (!Configuration.ManualWalking()) {
        ; safety initial repair before starting the runs in case we forget it
        ProjectEva.RepairWeapon()
    }

    ; start with selection to avoid having to clear it initially before starting
    ProjectEva.SelectMode()

    loop {
        if (!ProjectEva.EnterDungeon()) {
            break
        }
        sleep 250
    }

    return

Numpad1::
    Camera.Spin(180, 1*1000)
    return

Numpad2::
    Camera.Spin(180)
    return

NumpadDel::Reload
NumpadEnter::ExitApp