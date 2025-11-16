@echo off
echo Opening dashboard...
start http://localhost:3001
timeout /t 2
start http://127.0.0.1:3001
echo.
echo If page doesn't open, try manually:
echo http://localhost:3001
pause

