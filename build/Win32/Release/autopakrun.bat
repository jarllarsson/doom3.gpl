@echo off
if exist "gamex86.dll" (
"autopak.bat"
)
echo JARL IS BATMAN
START "DOOM" "DOOM3.exe"
cd ..\Dedicated Release
START "DOOMsrv" "DOOM3.exe" +exec "server.cfg"
timeout /T 4