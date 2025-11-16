@echo off
echo Checking SHSMS Status...
echo.

echo Checking Backend (port 3000)...
netstat -ano | findstr ":3000" >nul
if %errorlevel% == 0 (
    echo [OK] Backend is running
) else (
    echo [ERROR] Backend is NOT running
)

echo.
echo Checking Dashboard (port 3001)...
netstat -ano | findstr ":3001" >nul
if %errorlevel% == 0 (
    echo [OK] Dashboard is running
) else (
    echo [ERROR] Dashboard is NOT running
)

echo.
echo Testing backend health...
curl http://localhost:3000/health 2>nul
if %errorlevel% == 0 (
    echo [OK] Backend is responding
) else (
    echo [ERROR] Backend is not responding
)

echo.
echo ========================================
echo If both are running, wait 30 seconds
echo then refresh browser (F5)
echo ========================================
pause

