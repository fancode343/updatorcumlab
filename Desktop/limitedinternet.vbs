X=MsgBox("THIS WILL UPDATE FIRST IF THERE IS UNLIMITED INTERNET. Do you Want to Continue?",0+1,"INFO")
Dim objShell
Set objShell = WScript.CreateObject ("WScript.shell")
Set objShell = Nothing
CreateObject("WScript.Shell").Run("""C:\LMNET\QUICKUPDATE.cmd""")
CreateObject("WScript.Shell").Run("""C:\LMNET\index.html""")
