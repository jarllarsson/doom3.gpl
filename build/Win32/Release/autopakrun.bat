@echo off
if exist "gamex86.dll" (
"autopak.bat"
:bootup
timeout /T 1
echo JARL IS BATMAN
cd ..\Dedicated Release
START "DOOMsrv" "DOOM3.exe" +exec "server.cfg"
cd ..\Release
timeout /T 5
START "DOOM" "DOOM3.exe" +disconnect +developer "1" +exec "default.cfg"
timeout /T 2
EXIT
) else (
goto bootup
EXIT
)
EXIT

