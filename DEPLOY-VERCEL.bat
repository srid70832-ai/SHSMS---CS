@echo off
echo ========================================
echo   Deploying SHSMS to Vercel
echo ========================================
echo.

set PATH=%PATH%;C:\Program Files\nodejs

echo Step 1: Deploying Dashboard...
echo.
cd /d "%~dp0dashboard"
call vercel --prod

echo.
echo Step 2: Deploying Backend...
echo.
cd /d "%~dp0cloud-platform"
call vercel --prod

echo.
echo ========================================
echo   Deployment Complete!
echo ========================================
echo.
echo Check your Vercel dashboard for URLs:
echo - Dashboard URL
echo - Backend URL
echo.
echo Don't forget to:
echo 1. Add environment variables in Vercel
echo 2. Update REACT_APP_API_URL in dashboard
echo.
pause

