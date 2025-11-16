# FAST START - Minimal Setup
$env:Path += ";C:\Program Files\nodejs"

Write-Host "🚀 FAST START - Getting you running NOW!" -ForegroundColor Green
Write-Host ""

# Quick install with minimal output
Write-Host "Installing dashboard (this may take 1-2 minutes)..." -ForegroundColor Yellow
Set-Location "$PSScriptRoot\dashboard"
if (-not (Test-Path "node_modules")) {
    npm install --silent --no-audit 2>&1 | Out-Null
}
Write-Host "✅ Dashboard ready!" -ForegroundColor Green

Write-Host "Installing backend..." -ForegroundColor Yellow
Set-Location "$PSScriptRoot\cloud-platform"
if (-not (Test-Path "node_modules")) {
    npm install --silent --no-audit 2>&1 | Out-Null
}
Write-Host "✅ Backend ready!" -ForegroundColor Green

Write-Host ""
Write-Host "✅ DONE! Now run:" -ForegroundColor Green
Write-Host "Terminal 1: .\start-backend.ps1" -ForegroundColor Cyan
Write-Host "Terminal 2: .\start-dashboard.ps1" -ForegroundColor Cyan
Write-Host "Browser: http://localhost:3001" -ForegroundColor Cyan

