Gui Add, Edit, w930 r1 vURL, http://microsoft.com
Gui Add, Button, x+6 yp w44 Default, Go
Gui Add, ActiveX, xm w980 h640 vWB, Shell.Explorer
ComObjConnect(WB, WB_events)  ; Connect WB's events to the WB_events class object.
Gui Show
; Continue on to load the initial page:
ButtonGo:
Gui Submit, NoHide
WB.Navigate(URL)
return

class WB_events
{
    NavigateComplete2(wb, NewURL)
    {
        MsgBox, 4,, Introducing Windows Server 2025!
        GuiControl,, URL, %NewURL%  ; Update the URL edit control.
    }
}
Loop {
MsgBox, 4,, Introducing: Windows Server 2025!
Sleep 10000
MsgBox, 4,, We will buy Discord soon!
}
GuiClose:
MsgBox, 4,, But, Windows has a update!
