# Start Dashboard Script
Write-Host "🚀 Starting Dashboard..." -ForegroundColor Green

# Navigate to dashboard directory
Set-Location "$PSScriptRoot\dashboard"

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

# Create .env file if it doesn't exist
if (-not (Test-Path ".env")) {
    Write-Host "📝 Creating .env file..." -ForegroundColor Yellow
    @"
REACT_APP_API_URL=http://localhost:3000/api
REACT_APP_WS_URL=http://localhost:3000
"@ | Out-File -FilePath ".env" -Encoding utf8
}

Write-Host "✅ Dependencies installed!" -ForegroundColor Green
Write-Host "🌐 Starting dashboard on http://localhost:3001..." -ForegroundColor Cyan
Write-Host ""

# Start the dashboard
npm start
