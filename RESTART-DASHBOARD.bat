@echo off
echo Restarting Dashboard...
echo.

cd /d "%~dp0dashboard"
set PATH=%PATH%;C:\Program Files\nodejs

echo Stopping old processes...
taskkill /F /IM node.exe /T 2>nul
timeout /t 2 /nobreak >nul

echo Starting fresh...
start "SHSMS Dashboard" cmd /k "cd /d %~dp0dashboard && set PATH=%PATH%;C:\Program Files\nodejs && npm start"

echo.
echo Dashboard restarting...
echo Wait 30 seconds, then refresh browser (F5)
echo.
pause

