@echo off
if exist "gamex86.dll" (
"autopak.bat"
:bootup
timeout /T 1
echo JARL IS BATMAN
START "DOOM" "DOOM3.exe"
cd ..\Dedicated Release
START "DOOMsrv" "DOOM3.exe" +exec "server.cfg"
cd ..\Release
timeout /T 2
EXIT
) else (
goto bootup
EXIT
)
EXIT

