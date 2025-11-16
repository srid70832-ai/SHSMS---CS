@echo off
echo ========================================
echo   Opening SHSMS Dashboard
echo ========================================
echo.

REM Check if servers are running
echo Checking servers...
netstat -ano | findstr ":3001" >nul
if %errorlevel% == 0 (
    echo [OK] Dashboard server is running
    echo.
    echo Opening browser...
    start http://localhost:3001
    timeout /t 2
    start http://127.0.0.1:3001
    echo.
    echo ✅ Browser opened!
    echo.
    echo If page is blank or loading:
    echo - Wait 60 seconds
    echo - Press F5 to refresh
) else (
    echo [ERROR] Dashboard server is NOT running
    echo.
    echo Starting servers now...
    echo.
    call "%~dp0RUN-BOTH.bat"
)

echo.
pause

