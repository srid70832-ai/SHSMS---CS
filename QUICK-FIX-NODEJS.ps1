# Quick Fix for Node.js PATH Issue
Write-Host "Checking Node.js installation..." -ForegroundColor Cyan
Write-Host ""

# Check common installation locations
$nodePaths = @(
    "C:\Program Files\nodejs\node.exe",
    "C:\Program Files (x86)\nodejs\node.exe",
    "$env:ProgramFiles\nodejs\node.exe",
    "$env:LOCALAPPDATA\Programs\nodejs\node.exe"
)

$nodeFound = $false
$nodeLocation = ""

foreach ($path in $nodePaths) {
    if (Test-Path $path) {
        $nodeFound = $true
        $nodeLocation = Split-Path $path
        Write-Host "✅ Found Node.js at: $nodeLocation" -ForegroundColor Green
        break
    }
}

if (-not $nodeFound) {
    Write-Host "❌ Node.js not found in common locations" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please check:" -ForegroundColor Yellow
    Write-Host "1. Did you complete the installation?" -ForegroundColor White
    Write-Host "2. Did you restart your computer?" -ForegroundColor White
    Write-Host "3. Try reinstalling Node.js from https://nodejs.org/" -ForegroundColor White
    exit
}

# Check if in PATH
Write-Host ""
Write-Host "Checking PATH..." -ForegroundColor Cyan
$pathEntries = $env:PATH -split ';'
$inPath = $false

foreach ($entry in $pathEntries) {
    if ($entry -like "*nodejs*") {
        $inPath = $true
        Write-Host "✅ Node.js is in PATH: $entry" -ForegroundColor Green
        break
    }
}

if (-not $inPath) {
    Write-Host "⚠️  Node.js is NOT in PATH" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Solutions:" -ForegroundColor Yellow
    Write-Host "1. RESTART YOUR COMPUTER (most common fix)" -ForegroundColor White
    Write-Host "2. Close and reopen PowerShell" -ForegroundColor White
    Write-Host "3. Or add manually to PATH (see FIX-NODEJS-PATH.md)" -ForegroundColor White
    Write-Host ""
    Write-Host "Node.js location: $nodeLocation" -ForegroundColor Cyan
    Write-Host "Add this to your PATH environment variable" -ForegroundColor Cyan
} else {
    Write-Host ""
    Write-Host "✅ Everything looks good!" -ForegroundColor Green
    Write-Host ""
    Write-Host "If 'node --version' still doesn't work:" -ForegroundColor Yellow
    Write-Host "1. Close this PowerShell window" -ForegroundColor White
    Write-Host "2. Open a NEW PowerShell window" -ForegroundColor White
    Write-Host "3. Try: node --version" -ForegroundColor White
}

Write-Host ""
Write-Host "Try running Node.js directly:" -ForegroundColor Cyan
if ($nodeFound) {
    & "$nodeLocation\node.exe" --version
    Write-Host ""
    Write-Host "If you see a version number above, Node.js is installed!" -ForegroundColor Green
    Write-Host "Just need to restart terminal/computer to use 'node' command." -ForegroundColor Yellow
}

