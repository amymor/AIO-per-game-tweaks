Function GetFileDlgEx(sIniDir,sFilter,sTitle) 
 Set oDlg = CreateObject("WScript.Shell").Exec("mshta.exe ""about:<object id=d classid=clsid:3050f4e1-98b5-11cf-bb82-00aa00bdce0b></object><script>moveTo(0,-9999);eval(new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(0).Read("&Len(sIniDir)+Len(sFilter)+Len(sTitle)+41&"));function window.onload(){var p=/[^\0]*/;new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).Write(p.exec(d.object.openfiledlg(iniDir,null,filter,title)));close();}</script><hta:application showintaskbar=no />""") 
 oDlg.StdIn.Write "var iniDir='" & sIniDir & "';var filter='" & sFilter & "';var title='" & sTitle & "';" 
 GetFileDlgEx = oDlg.StdOut.ReadAll 
End Function
'sample test
' sIniDir = "C:\MyFile.rar" 
sFilter = "Executable (*.exe)|*.exe|" 
sTitle = "Select your game Executable" 
MyFile = GetFileDlgEx(Replace(sIniDir,"\","\\"),sFilter,sTitle) 
wscript.echo MyFile