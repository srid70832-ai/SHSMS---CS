# Start Both Servers in Background
$env:Path += ";C:\Program Files\nodejs"

Write-Host "🚀 Starting both servers..." -ForegroundColor Green

# Start backend in background
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PSScriptRoot\cloud-platform'; `$env:Path += ';C:\Program Files\nodejs'; npm start" -WindowStyle Normal

Start-Sleep -Seconds 3

# Start dashboard in background  
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PSScriptRoot\dashboard'; `$env:Path += ';C:\Program Files\nodejs'; npm start" -WindowStyle Normal

Start-Sleep -Seconds 2

Write-Host "✅ Both servers starting!" -ForegroundColor Green
Write-Host "Opening browser in 10 seconds..." -ForegroundColor Yellow
Start-Sleep -Seconds 10
Start-Process "http://localhost:3001"

Write-Host ""
Write-Host "✅ Done! Check the two PowerShell windows that opened." -ForegroundColor Green
Write-Host "Dashboard: http://localhost:3001" -ForegroundColor Cyan

