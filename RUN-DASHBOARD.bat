@echo off
cd /d "%~dp0dashboard"
set PATH=%PATH%;C:\Program Files\nodejs
call npm start
pause

