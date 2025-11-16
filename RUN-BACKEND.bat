@echo off
cd /d "%~dp0cloud-platform"
set PATH=%PATH%;C:\Program Files\nodejs
call npm start
pause

