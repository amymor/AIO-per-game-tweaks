#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
Local $sFile = @ScriptName
Local $sFilenameExExt = StringRegExpReplace($sFile, "^.*\\|\..*$", "")

ShellExecute ( @ScriptDir&"\"&$sFilenameExExt&".bat" , $CmdLineRaw, "" , "" , @SW_HIDE  )