@echo off

set list=INSTRUCTOR AUTO11 AUTO12 AUTO21 AUTO22 AUTO31 AUTO32 AUTO41 AUTO42 AUTO51 AUTO52 AUTO61 AUTO62 AUTO71 AUTO72 DECEP11 DECEP12 DECEP21 DECEP22 DECEP31 DECEP32 DECEP41 DECEP42 DECEP51 DECEP52 DECEP61 DECEP62 MAX11 MAX12 MAX21 MAX22 MAX31 MAX32 MAX41 MAX42 MAX51 MAX52 MAX61 MAX62
for %%a in (%list%) do (
	Powershell.exe -Command "iwr -Uri https://raw.githubusercontent.com/emmaunel/funlab/master/new.jpg -OutFile C:\Users\student\Desktop\new.bmp // have to use psexec for remote execution
	Powershell.exe -Command "sleep 10"
	Powershell.exe -Command "msg * /SERVER:%%a Hello, Friend"
	Powershell.exe -Command "sleep 5"
	Powershell.exe -Command "msg * /SERVER:%%a HI, I hope you like you new wallpaper"
	Powershell.exe -Command "sleep 5"
	sp 'HKCU:Control Panel\Desktop' -name WallPaper -value 'C:\Users\student\Desktop\new.bmp'// To change wallpaper from cmd, it has to be bmp
	RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters 1,True //Now works
	
)
pause
