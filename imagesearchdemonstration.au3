#include <ImageSearch.au3>
AutoItSetOption("MouseClickDownDelay",100)

Func pause($sure)
local $zaman1 = TimerInit()
while TimerDiff($zaman1) < $sure
 Sleep(10)
   WEnd
EndFunc

$x1=0
$y1=0
$ara = _WaitForImageSearch(@ScriptDir & "\1.bmp",10,1,$x1,$y1,10)
If $ara = 0 Then
Exit
EndIf

MouseMove($x1,$y1,3)
Call("pause","500")
MouseClick("left")