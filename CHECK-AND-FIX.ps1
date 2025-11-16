# Check and Fix Everything
$env:Path += ";C:\Program Files\nodejs"

Write-Host "🔍 Checking SHSMS Status..." -ForegroundColor Cyan
Write-Host ""

# Check Node.js
Write-Host "1. Checking Node.js..." -ForegroundColor Yellow
try {
    $nodeVersion = node --version
    Write-Host "   ✅ Node.js: $nodeVersion" -ForegroundColor Green
} catch {
    Write-Host "   ❌ Node.js not found!" -ForegroundColor Red
    exit
}

# Check dependencies
Write-Host "2. Checking dependencies..." -ForegroundColor Yellow
$dashboardReady = Test-Path "dashboard\node_modules"
$backendReady = Test-Path "cloud-platform\node_modules"

if ($dashboardReady) {
    Write-Host "   ✅ Dashboard dependencies installed" -ForegroundColor Green
} else {
    Write-Host "   ⚠️  Dashboard dependencies missing - installing..." -ForegroundColor Yellow
    Set-Location dashboard
    npm install --silent
    Set-Location ..
    Write-Host "   ✅ Dashboard dependencies installed" -ForegroundColor Green
}

if ($backendReady) {
    Write-Host "   ✅ Backend dependencies installed" -ForegroundColor Green
} else {
    Write-Host "   ⚠️  Backend dependencies missing - installing..." -ForegroundColor Yellow
    Set-Location cloud-platform
    npm install --silent
    Set-Location ..
    Write-Host "   ✅ Backend dependencies installed" -ForegroundColor Green
}

# Check if servers are running
Write-Host "3. Checking servers..." -ForegroundColor Yellow
$port3000 = netstat -ano | findstr ":3000"
$port3001 = netstat -ano | findstr ":3001"

if ($port3000) {
    Write-Host "   ✅ Backend running on port 3000" -ForegroundColor Green
} else {
    Write-Host "   ❌ Backend NOT running" -ForegroundColor Red
}

if ($port3001) {
    Write-Host "   ✅ Dashboard running on port 3001" -ForegroundColor Green
} else {
    Write-Host "   ❌ Dashboard NOT running" -ForegroundColor Red
}

Write-Host ""
Write-Host "🚀 Starting servers..." -ForegroundColor Cyan

# Start backend
if (-not $port3000) {
    Write-Host "   Starting backend..." -ForegroundColor Yellow
    Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PWD\cloud-platform'; `$env:Path += ';C:\Program Files\nodejs'; npm start" -WindowStyle Normal
    Start-Sleep 5
}

# Start dashboard
if (-not $port3001) {
    Write-Host "   Starting dashboard..." -ForegroundColor Yellow
    Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PWD\dashboard'; `$env:Path += ';C:\Program Files\nodejs'; npm start" -WindowStyle Normal
    Start-Sleep 10
}

Write-Host ""
Write-Host "✅ Servers starting! Opening browser..." -ForegroundColor Green
Start-Sleep 5
Start-Process "http://localhost:3001"

Write-Host ""
Write-Host "✅ Done! Check the PowerShell windows that opened." -ForegroundColor Green
Write-Host "Dashboard: http://localhost:3001" -ForegroundColor Cyan
Write-Host ""
Write-Host "If page doesn't load, wait 30 seconds and refresh." -ForegroundColor Yellow

