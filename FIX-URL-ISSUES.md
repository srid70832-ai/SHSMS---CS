# Fix URL Not Working - Troubleshooting Guide

If http://localhost:3001 is not working, follow these steps:

## ✅ Step 1: Check if Servers are Running

### Check Backend (Port 3000):
```powershell
# Check if port 3000 is in use
netstat -ano | findstr :3000
```

### Check Frontend (Port 3001):
```powershell
# Check if port 3001 is in use
netstat -ano | findstr :3001
```

If nothing shows, the servers are NOT running.

## 🔧 Step 2: Install Dependencies

### Install Backend Dependencies:
```powershell
cd C:\Users\sri\shsms\cloud-platform
npm install
```

### Install Frontend Dependencies:
```powershell
cd C:\Users\sri\shsms\dashboard
npm install
```

## 🚀 Step 3: Start Servers Correctly

### Terminal 1 - Start Backend:
```powershell
cd C:\Users\sri\shsms\cloud-platform
npm start
```

**Wait for this message:**
```
Cloud Platform server running on port 3000
```

**If you see errors:**
- MongoDB error is OK (app works without it)
- MQTT error is OK (app works without it)
- Just make sure the server starts

### Terminal 2 - Start Dashboard:
```powershell
cd C:\Users\sri\shsms\dashboard

# Create .env file
echo REACT_APP_API_URL=http://localhost:3000/api > .env
echo REACT_APP_WS_URL=http://localhost:3000 >> .env

# Start dashboard
npm start
```

**Wait for this message:**
```
Compiled successfully!
You can now view shsms-dashboard in the browser.
  Local:            http://localhost:3001
```

## 🔍 Step 4: Common Issues & Fixes

### Issue 1: "Cannot GET /"
**Fix:** Make sure backend is running on port 3000

### Issue 2: "Connection refused"
**Fix:** 
1. Check if backend is running
2. Check firewall settings
3. Try: `http://127.0.0.1:3001` instead of `localhost:3001`

### Issue 3: "Port already in use"
**Fix:**
```powershell
# Kill process on port 3001
netstat -ano | findstr :3001
# Note the PID, then:
taskkill /PID <PID> /F

# Or use different port
set PORT=3002
npm start
```

### Issue 4: "Module not found"
**Fix:**
```powershell
cd C:\Users\sri\shsms\dashboard
rm -rf node_modules
npm install
```

### Issue 5: "npm: command not found"
**Fix:** Install Node.js from https://nodejs.org/

## 🧪 Step 5: Test Backend First

Before starting dashboard, test if backend works:

```powershell
# Start backend
cd C:\Users\sri\shsms\cloud-platform
npm start
```

Then in browser, go to: **http://localhost:3000/health**

You should see:
```json
{"status":"ok","timestamp":"..."}
```

If this works, backend is OK. If not, fix backend first.

## 🎯 Quick Fix Script

Run this in PowerShell:

```powershell
# Navigate to project
cd C:\Users\sri\shsms

# Install all dependencies
cd cloud-platform
npm install
cd ..

cd dashboard
npm install
cd ..

# Create .env file
cd dashboard
echo REACT_APP_API_URL=http://localhost:3000/api > .env
echo REACT_APP_WS_URL=http://localhost:3000 >> .env

Write-Host "✅ Setup complete! Now start servers:"
Write-Host "Terminal 1: cd cloud-platform && npm start"
Write-Host "Terminal 2: cd dashboard && npm start"
```

## 📋 Checklist

Before accessing http://localhost:3001:

- [ ] Node.js is installed (`node --version`)
- [ ] npm is installed (`npm --version`)
- [ ] Backend dependencies installed (`cd cloud-platform && npm install`)
- [ ] Frontend dependencies installed (`cd dashboard && npm install`)
- [ ] Backend server is running (port 3000)
- [ ] Frontend server is running (port 3001)
- [ ] .env file exists in dashboard folder
- [ ] No firewall blocking ports
- [ ] Browser is not cached (try incognito mode)

## 🔄 Alternative: View Without Backend

If backend won't start, you can still view the UI:

```powershell
cd C:\Users\sri\shsms\dashboard
npm install
npm start
```

The dashboard will load but show "Connection failed" errors. The UI will still be visible.

## 📞 Still Not Working?

1. Check browser console (F12) for errors
2. Check terminal for error messages
3. Try different browser
4. Try http://127.0.0.1:3001 instead
5. Check Windows Firewall settings

