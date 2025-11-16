@echo off
echo Starting SHSMS...
echo.

cd /d "%~dp0"
set PATH=%PATH%;C:\Program Files\nodejs

echo Starting Backend...
start "SHSMS Backend" cmd /k "cd /d %~dp0cloud-platform && npm start"

timeout /t 3 /nobreak >nul

echo Starting Dashboard...
start "SHSMS Dashboard" cmd /k "cd /d %~dp0dashboard && npm start"

timeout /t 5 /nobreak >nul

echo Opening browser...
start http://localhost:3001

echo.
echo Done! Check the two command windows that opened.
echo Dashboard: http://localhost:3001
pause

