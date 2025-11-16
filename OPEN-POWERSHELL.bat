@echo off
echo Opening PowerShell in SHSMS directory...
start powershell -NoExit -Command "cd /d %~dp0; Write-Host 'SHSMS Project Directory' -ForegroundColor Green; Write-Host ''; Write-Host 'Quick Commands:' -ForegroundColor Cyan; Write-Host '  Deploy Dashboard: cd dashboard && vercel' -ForegroundColor Yellow; Write-Host '  Deploy Backend: cd cloud-platform && vercel' -ForegroundColor Yellow; Write-Host '  Start Dashboard: cd dashboard && npm start' -ForegroundColor Yellow; Write-Host '  Start Backend: cd cloud-platform && npm start' -ForegroundColor Yellow; Write-Host ''"

