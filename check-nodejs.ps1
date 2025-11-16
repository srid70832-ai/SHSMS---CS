# Check if Node.js is installed
Write-Host "Checking for Node.js installation..." -ForegroundColor Cyan
Write-Host ""

# Check Node.js
try {
    $nodeVersion = node --version 2>$null
    if ($nodeVersion) {
        Write-Host "✅ Node.js is installed!" -ForegroundColor Green
        Write-Host "   Version: $nodeVersion" -ForegroundColor Green
    }
} catch {
    Write-Host "❌ Node.js is NOT installed" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Node.js:" -ForegroundColor Yellow
    Write-Host "1. Go to: https://nodejs.org/" -ForegroundColor Yellow
    Write-Host "2. Download the LTS version" -ForegroundColor Yellow
    Write-Host "3. Install it (make sure 'Add to PATH' is checked)" -ForegroundColor Yellow
    Write-Host "4. Restart your computer" -ForegroundColor Yellow
    Write-Host "5. Run this script again" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Opening Node.js download page..." -ForegroundColor Cyan
    Start-Process "https://nodejs.org/"
    exit
}

# Check npm
try {
    $npmVersion = npm --version 2>$null
    if ($npmVersion) {
        Write-Host "✅ npm is installed!" -ForegroundColor Green
        Write-Host "   Version: $npmVersion" -ForegroundColor Green
    }
} catch {
    Write-Host "❌ npm is NOT installed" -ForegroundColor Red
    Write-Host "   (npm should come with Node.js)" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "✅ You're ready to run the project!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Run: .\start-backend.ps1" -ForegroundColor White
Write-Host "2. In a new window, run: .\start-dashboard.ps1" -ForegroundColor White
Write-Host "3. Open: http://localhost:3001" -ForegroundColor White

