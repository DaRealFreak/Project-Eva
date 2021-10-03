#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class FailSafeRoute
{
    Run()
    {
        Send, {a Down}
        Sleep, 800
        Send, {w Down}
        Send, {LShift Down}
        Sleep, 375
        Send, {LShift Up}
        Sleep, 515
        Send, {Space Down}
        Sleep, 235
        Send, {Space Up}
        Sleep, 1562
        Send, {Space Down}
        Sleep, 203
        Send, {Space Up}
        Sleep, 7350
        Send, {a Up}
        Sleep, 250
        Send, {Space Down}
        Sleep, 235
        Send, {Space Up}
        Sleep, 1453
        Send, {w Up}
   }
}