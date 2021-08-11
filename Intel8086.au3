#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <WinAPI.au3>

$Form1 = GUICreate("Intel 8086", 472, 272, 193, 141)
$Label1 = GUICtrlCreateLabel("AX", 8, 16, 18, 17)
$Label2 = GUICtrlCreateLabel("BX", 8, 48, 18, 17)
$Label3 = GUICtrlCreateLabel("CX", 8, 80, 18, 17)
$Label4 = GUICtrlCreateLabel("DX", 8, 112, 19, 17)
$InputAX = GUICtrlCreateInput("", 32, 16, 65, 21)
$InputBX = GUICtrlCreateInput("", 32, 48, 65, 21)
$InputCX = GUICtrlCreateInput("", 32, 80, 65, 21)
$InputDX = GUICtrlCreateInput("", 32, 112, 65, 21)
$Label5 = GUICtrlCreateLabel("AH", 112, 16, 19, 17)
$Label6 = GUICtrlCreateLabel("BH", 112, 48, 19, 17)
$Label7 = GUICtrlCreateLabel("CH", 112, 80, 19, 17)
$Label8 = GUICtrlCreateLabel("DH", 112, 112, 20, 17)
$InputAH = GUICtrlCreateInput("", 136, 16, 57, 21)
$InputBH = GUICtrlCreateInput("", 136, 48, 57, 21)
$InputCH = GUICtrlCreateInput("", 136, 80, 57, 21)
$InputDH = GUICtrlCreateInput("", 136, 112, 57, 21)
$Label9 = GUICtrlCreateLabel("AL", 208, 16, 17, 17)
$Label10 = GUICtrlCreateLabel("BL", 208, 48, 17, 17)
$Label11 = GUICtrlCreateLabel("CL", 208, 80, 17, 17)
$Label12 = GUICtrlCreateLabel("DL", 208, 112, 18, 17)
$InputAL = GUICtrlCreateInput("", 232, 16, 57, 21)
$InputBL = GUICtrlCreateInput("", 232, 48, 57, 21)
$InputCL = GUICtrlCreateInput("", 232, 80, 57, 21)
$InputDL = GUICtrlCreateInput("", 232, 112, 57, 21)
$Group1 = GUICtrlCreateGroup("From", 8, 144, 225, 121)
$FromAX = GUICtrlCreateRadio("AX", 16, 160, 65, 17)
$FromBX = GUICtrlCreateRadio("BX", 16, 184, 65, 17)
$FromCX = GUICtrlCreateRadio("CX", 16, 208, 65, 17)
$FromDX = GUICtrlCreateRadio("DX", 16, 232, 65, 17)
$FromAH = GUICtrlCreateRadio("AH", 88, 160, 65, 17)
$FromBH = GUICtrlCreateRadio("BH", 88, 184, 65, 17)
$FromCH = GUICtrlCreateRadio("CH", 88, 208, 65, 17)
$FromDH = GUICtrlCreateRadio("DH", 88, 232, 65, 17)
$FromAL = GUICtrlCreateRadio("AL", 160, 160, 65, 17)
$FromBL = GUICtrlCreateRadio("BL", 160, 184, 65, 17)
$FromCL = GUICtrlCreateRadio("CL", 160, 208, 65, 17)
$FromDL = GUICtrlCreateRadio("DL", 160, 232, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group2 = GUICtrlCreateGroup("To", 240, 144, 225, 121)
$ToAX = GUICtrlCreateRadio("AX", 248, 160, 65, 17)
$ToBX = GUICtrlCreateRadio("BX", 248, 184, 65, 17)
$ToCX = GUICtrlCreateRadio("CX", 248, 208, 65, 17)
$ToDX = GUICtrlCreateRadio("DX", 248, 232, 65, 17)
$ToAH = GUICtrlCreateRadio("AH", 320, 160, 65, 17)
$ToBH = GUICtrlCreateRadio("BH", 320, 184, 65, 17)
$ToCH = GUICtrlCreateRadio("CH", 320, 208, 65, 17)
$ToDH = GUICtrlCreateRadio("DH", 320, 232, 65, 17)
$ToAL = GUICtrlCreateRadio("AL", 392, 160, 65, 17)
$ToBL = GUICtrlCreateRadio("BL", 392, 184, 65, 17)
$ToCL = GUICtrlCreateRadio("CL", 392, 208, 65, 17)
$ToDL = GUICtrlCreateRadio("DL", 392, 232, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Button1 = GUICtrlCreateButton("Move", 304, 16, 75, 25)
$Button2 = GUICtrlCreateButton("Exchange", 384, 16, 75, 25)
$Button3 = GUICtrlCreateButton("Random", 304, 56, 75, 25)
$Button4 = GUICtrlCreateButton("Reset", 384, 56, 75, 25)
GUISetState(@SW_SHOW)

Global $from
Global $to
Global $fromX
Global $toX

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
	    Case $Button3
			randinputs()
        Case $Button4
			reset()
	    Case $FromAX
			$from = $InputAX
			$fromX = 0
	    Case $FromBX
			$from = $InputBX
			$fromX = 0
	    Case $FromCX
			$from = $InputCX
			$fromX = 0
		 Case $FromDX
			$fromX = 0
			$from = $InputDX
		 Case $FromAH
			$fromX = 1
			$from = $InputAH
		Case $FromBH
			$fromX = 1
			$from = $InputBH
		 Case $FromCH
			$fromX = 1
			$from = $InputCH
		 Case $FromDH
			$fromX = 1
			$from = $InputDH
		 Case $FromAL
			$fromX = 2
			$from = $InputAL
		Case $FromBL
			$fromX = 2
			$from = $InputBL
		 Case $FromCL
			$fromX = 2
			$from = $InputCL
		 Case $FromDL
			$fromX = 2
			$from = $InputDL

	    Case $ToAX
			$toX = 0
			$to = $InputAX
		 Case $ToBX
			$toX = 0
			$to = $InputBX
		 Case $ToCX
			$toX = 0
			$to = $InputCX
		 Case $ToDX
			$toX = 0
			$to = $InputDX
		 Case $ToAH
			$toX = 1
			$to = $InputAH
		 Case $ToBH
			$toX = 1
			$to = $InputBH
		 Case $ToCH
			$toX = 1
			$to = $InputCH
		 Case $ToDH
			$toX = 1
			$to = $InputDH
		 Case $ToAL
			$toX = 2
			$to = $InputAL
		 Case $ToBL
			$toX = 2
			$to = $InputBL
		 Case $ToCL
			$toX = 2
			$to = $InputCL
		 Case $ToDL
			$toX = 2
			$to = $InputDL
		Case $Button1
			Move()
		Case $Button2
			Exchange()
	EndSwitch
WEnd


Func randinputs()
   For $i=$InputAH to  $Button3
	  if _WinAPI_GetClassName(GUICtrlGetHandle($i))="Edit" Then
		 GUICtrlSetData($i, Hex(Random(1,255,1), 2))
	  EndIf
   Next
GUICtrlSetData($InputAX, GUICtrlRead($InputAH)&GUICtrlRead($InputAL))
GUICtrlSetData($InputBX, GUICtrlRead($InputBH)&GUICtrlRead($InputBL))
GUICtrlSetData($InputCX, GUICtrlRead($InputCH)&GUICtrlRead($InputCL))
GUICtrlSetData($InputDX, GUICtrlRead($InputDH)&GUICtrlRead($InputDL))
EndFunc

Func reset()
   For $i=$InputAX to  $Button3
		 if _WinAPI_GetClassName(GUICtrlGetHandle($i))="Edit" Then
			GUICtrlSetData($i, "")
		 EndIf
   Next
EndFunc

Func Move()
   If $fromX == 1 and $toX == 0 Then
	  $var = GUICtrlRead($to)
	  $array = StringSplit($var, "")
	  GUICtrlSetData($to, GUICtrlRead($from)&$array[3]&$array[4])
   ElseIf $fromX == 2 and $toX == 0 Then
	  $var = GUICtrlRead($to)
	  $array = StringSplit($var, "")
	  GUICtrlSetData($to, $array[1]&$array[2]&GUICtrlRead($from))
   ElseIf $fromX == 0 and $toX == 1 Then
	  $var = GUICtrlRead($from)
	  $array = StringSplit($var, "")
	  GUICtrlSetData($to, $array[1]&$array[2])
   ElseIf $fromX == 0 and $toX == 2 Then
	  $var = GUICtrlRead($from)
	  $array = StringSplit($var, "")
	  GUICtrlSetData($to, $array[3]&$array[4])
   Else
	  GUICtrlSetData($to, GUICtrlRead($from))
   EndIf
EndFunc

Func Exchange()
      If $fromX == 1 and $toX == 0 Then
	  $var = GUICtrlRead($to)
	  $array = StringSplit($var, "")
	  $x = GUICtrlRead($from)
	  GUICtrlSetData($from, $array[1]&$array[2])
	  GUICtrlSetData($to, $x&$array[3]&$array[4])
   ElseIf $fromX == 2 and $toX == 0 Then
	  $var = GUICtrlRead($to)
	  $array = StringSplit($var, "")
	  $x = GUICtrlRead($from)
	  GUICtrlSetData($from, $array[3]&$array[4])
	  GUICtrlSetData($to, $array[1]&$array[2]&$x)
   ElseIf $fromX == 0 and $toX == 1 Then
	  $var = GUICtrlRead($from)
	  $array = StringSplit($var, "")
	  $x = GUICtrlRead($to)
	  GUICtrlSetData($to, $array[1]&$array[2])
	  GUICtrlSetData($from, $x&$array[3]&$array[4])
   ElseIf $fromX == 0 and $toX == 2 Then
	  $var = GUICtrlRead($from)
	  $array = StringSplit($var, "")
	  $x = GUICtrlRead($to)
	  GUICtrlSetData($to, $array[3]&$array[4])
	  GUICtrlSetData($from, $array[1]&$array[2]&$x)
   Else
	  $x = GUICtrlRead($from)
	  $y = GUICtrlRead($to)
	  GUICtrlSetData($to, $x)
	  GUICtrlSetData($from, $y)
   EndIf
EndFunc