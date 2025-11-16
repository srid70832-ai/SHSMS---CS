# Start Script with PATH Fix
Write-Host "🚀 Starting SHSMS with PATH fix..." -ForegroundColor Cyan
Write-Host ""

# Add Node.js to PATH for this session
$nodePath = "C:\Program Files\nodejs"
if (Test-Path "$nodePath\node.exe") {
    if ($env:Path -notlike "*$nodePath*") {
        $env:Path += ";$nodePath"
        Write-Host "✅ Added Node.js to PATH for this session" -ForegroundColor Green
    }
} else {
    Write-Host "❌ Node.js not found. Please install from https://nodejs.org/" -ForegroundColor Red
    exit
}

# Verify Node.js works
Write-Host "Checking Node.js..." -ForegroundColor Yellow
$nodeVersion = node --version
$npmVersion = npm --version

if ($nodeVersion -and $npmVersion) {
    Write-Host "✅ Node.js: $nodeVersion" -ForegroundColor Green
    Write-Host "✅ npm: $npmVersion" -ForegroundColor Green
    Write-Host ""
} else {
    Write-Host "❌ Node.js not working. Please restart your computer after installation." -ForegroundColor Red
    exit
}

# Check if dependencies are installed
Write-Host "Checking dependencies..." -ForegroundColor Yellow

# Dashboard
Set-Location "$PSScriptRoot\dashboard"
if (-not (Test-Path "node_modules")) {
    Write-Host "📦 Installing dashboard dependencies..." -ForegroundColor Yellow
    npm install
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Installation failed!" -ForegroundColor Red
        exit
    }
}

# Backend
Set-Location "$PSScriptRoot\cloud-platform"
if (-not (Test-Path "node_modules")) {
    Write-Host "📦 Installing backend dependencies..." -ForegroundColor Yellow
    npm install
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Installation failed!" -ForegroundColor Red
        exit
    }
}

Write-Host ""
Write-Host "✅ Everything ready!" -ForegroundColor Green
Write-Host ""
Write-Host "Next: Run these in separate terminals:" -ForegroundColor Yellow
Write-Host "1. .\start-backend.ps1" -ForegroundColor Cyan
Write-Host "2. .\start-dashboard.ps1" -ForegroundColor Cyan
Write-Host ""

