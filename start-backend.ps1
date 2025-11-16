# Start Backend Server Script
Write-Host "🚀 Starting Backend Server..." -ForegroundColor Green

# Navigate to cloud-platform directory
Set-Location "$PSScriptRoot\cloud-platform"

# Check if node_modules exists
if (-not (Test-Path "node_modules")) {
    Write-Host "📦 Installing dependencies..." -ForegroundColor Yellow
    npm install
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Installation failed! Make sure Node.js is installed." -ForegroundColor Red
        Write-Host "Download from: https://nodejs.org/" -ForegroundColor Yellow
        pause
        exit
    }
}

Write-Host "✅ Dependencies installed!" -ForegroundColor Green
Write-Host "🌐 Starting server on http://localhost:3000..." -ForegroundColor Cyan
Write-Host ""

# Start the server
npm start
