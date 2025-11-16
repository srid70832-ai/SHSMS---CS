@echo off
echo Fixing Vercel CLI...
echo.

set PATH=%PATH%;C:\Program Files\nodejs
set PATH=%PATH%;%APPDATA%\npm

echo Installing Vercel CLI globally...
call npm install -g vercel

echo.
echo Verifying installation...
call vercel --version

echo.
echo ✅ Vercel CLI is now installed!
echo.
echo Now you can run:
echo   cd dashboard
echo   vercel
echo.
pause

