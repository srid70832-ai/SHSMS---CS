# Complete Setup Script - Runs Everything Automatically
Write-Host "🚀 SHSMS Complete Setup Script" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Check Node.js
Write-Host "Step 1: Checking Node.js..." -ForegroundColor Yellow
try {
    $nodeVersion = node --version 2>$null
    $npmVersion = npm --version 2>$null
    Write-Host "✅ Node.js installed: $nodeVersion" -ForegroundColor Green
    Write-Host "✅ npm installed: $npmVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Node.js is NOT installed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Node.js first:" -ForegroundColor Yellow
    Write-Host "1. Go to: https://nodejs.org/" -ForegroundColor White
    Write-Host "2. Download and install LTS version" -ForegroundColor White
    Write-Host "3. Restart your computer" -ForegroundColor White
    Write-Host "4. Run this script again" -ForegroundColor White
    Write-Host ""
    $install = Read-Host "Would you like to open the Node.js download page? (Y/N)"
    if ($install -eq "Y" -or $install -eq "y") {
        Start-Process "https://nodejs.org/"
    }
    exit
}

Write-Host ""
Write-Host "Step 2: Installing Dashboard Dependencies..." -ForegroundColor Yellow
Set-Location "$PSScriptRoot\dashboard"
if (-not (Test-Path "node_modules")) {
    npm install
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Dashboard installation failed!" -ForegroundColor Red
        exit
    }
    Write-Host "✅ Dashboard dependencies installed!" -ForegroundColor Green
} else {
    Write-Host "✅ Dashboard dependencies already installed!" -ForegroundColor Green
}

Write-Host ""
Write-Host "Step 3: Installing Backend Dependencies..." -ForegroundColor Yellow
Set-Location "$PSScriptRoot\cloud-platform"
if (-not (Test-Path "node_modules")) {
    npm install
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Backend installation failed!" -ForegroundColor Red
        exit
    }
    Write-Host "✅ Backend dependencies installed!" -ForegroundColor Green
} else {
    Write-Host "✅ Backend dependencies already installed!" -ForegroundColor Green
}

Write-Host ""
Write-Host "Step 4: Verifying Configuration Files..." -ForegroundColor Yellow
Set-Location "$PSScriptRoot"

# Check dashboard .env
if (-not (Test-Path "dashboard\.env")) {
    Write-Host "⚠️  Creating dashboard .env file..." -ForegroundColor Yellow
    @"
REACT_APP_API_URL=http://localhost:3000/api
REACT_APP_WS_URL=http://localhost:3000
"@ | Out-File -FilePath "dashboard\.env" -Encoding utf8
    Write-Host "✅ Dashboard .env created!" -ForegroundColor Green
} else {
    Write-Host "✅ Dashboard .env exists!" -ForegroundColor Green
}

# Check backend .env
if (-not (Test-Path "cloud-platform\.env")) {
    Write-Host "⚠️  Creating backend .env file..." -ForegroundColor Yellow
    @"
MONGODB_URI=mongodb://localhost:27017/shsms
MQTT_BROKER_URL=mqtt://localhost:1883
PORT=3000
NODE_ENV=development
"@ | Out-File -FilePath "cloud-platform\.env" -Encoding utf8
    Write-Host "✅ Backend .env created!" -ForegroundColor Green
} else {
    Write-Host "✅ Backend .env exists!" -ForegroundColor Green
}

Write-Host ""
Write-Host "================================" -ForegroundColor Cyan
Write-Host "✅ SETUP COMPLETE!" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Everything is ready! Next steps:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Start Backend (Terminal 1):" -ForegroundColor White
Write-Host "   .\start-backend.ps1" -ForegroundColor Cyan
Write-Host ""
Write-Host "2. Start Dashboard (Terminal 2):" -ForegroundColor White
Write-Host "   .\start-dashboard.ps1" -ForegroundColor Cyan
Write-Host ""
Write-Host "3. Open Browser:" -ForegroundColor White
Write-Host "   http://localhost:3001" -ForegroundColor Cyan
Write-Host ""

