@echo off
echo Using npx to run Vercel (no installation needed)...
echo.

set PATH=%PATH%;C:\Program Files\nodejs

echo Deploying Dashboard with npx...
cd /d "%~dp0dashboard"
call npx vercel

echo.
echo Deploying Backend with npx...
cd /d "%~dp0cloud-platform"
call npx vercel

echo.
echo Done!
pause

