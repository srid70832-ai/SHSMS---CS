@echo off
echo Installing missing dependencies...
echo.

cd /d "%~dp0dashboard"
set PATH=%PATH%;C:\Program Files\nodejs

echo Installing @emotion/react and @emotion/styled...
call npm install @emotion/react @emotion/styled --save

echo.
echo ✅ Dependencies installed!
echo.
echo The dashboard should now work. Refresh your browser (F5)
pause

