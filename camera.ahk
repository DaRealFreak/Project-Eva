#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

class Camera
{
    static turn := 1587

    Spin(degrees, delay := 0)
    {
        pxls := (this.turn/180) * degrees

        loops := delay / 25
        loop, 25 {
            DllCall("mouse_event", "UInt", 0x0001, "UInt", pxls/25, "UInt", 0)            
            sleep loops
        }
    }
}