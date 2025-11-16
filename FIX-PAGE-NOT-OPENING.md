# Fix: Page Not Opening

## 🔍 Quick Diagnosis

### Step 1: Check if Servers are Running

Open PowerShell and run:
```powershell
netstat -ano | findstr ":3000"
netstat -ano | findstr ":3001"
```

**If you see output** → Servers are running, go to Step 2  
**If no output** → Servers not running, go to Step 3

---

### Step 2: Servers Running but Page Won't Open

**Try these URLs:**
- http://localhost:3001
- http://127.0.0.1:3001
- http://localhost:3000 (backend health check)

**Check browser console:**
- Press F12 in browser
- Look for errors in Console tab

**Clear browser cache:**
- Press Ctrl+Shift+Delete
- Clear cache and cookies
- Try again

---

### Step 3: Servers Not Running - Start Them

**Method 1: Use BAT Files (Easiest)**
1. Go to: `C:\Users\sri\shsms`
2. Double-click: `RUN-BOTH.bat`
3. Wait 30 seconds
4. Browser should open automatically

**Method 2: Manual Start**

**Terminal 1 - Backend:**
```powershell
cd C:\Users\sri\shsms\cloud-platform
$env:Path += ";C:\Program Files\nodejs"
npm start
```

Wait for: `Cloud Platform server running on port 3000`

**Terminal 2 - Dashboard:**
```powershell
cd C:\Users\sri\shsms\dashboard
$env:Path += ";C:\Program Files\nodejs"
npm start
```

Wait for: `Compiled successfully!`

**Then open:** http://localhost:3001

---

### Step 4: Check Dependencies

If servers won't start, install dependencies:

```powershell
cd C:\Users\sri\shsms\dashboard
$env:Path += ";C:\Program Files\nodejs"
npm install

cd ..\cloud-platform
npm install
```

---

### Step 5: Common Issues

**Port Already in Use:**
```powershell
# Kill process on port 3000
netstat -ano | findstr ":3000"
taskkill /PID <PID_NUMBER> /F

# Kill process on port 3001
netstat -ano | findstr ":3001"
taskkill /PID <PID_NUMBER> /F
```

**Firewall Blocking:**
- Windows Firewall might be blocking
- Try disabling temporarily
- Or allow Node.js through firewall

**Node.js Not in PATH:**
```powershell
$env:Path += ";C:\Program Files\nodejs"
```

---

## ✅ Quick Fix Script

Run this to check everything:

```powershell
cd C:\Users\sri\shsms
$env:Path += ";C:\Program Files\nodejs"

# Check Node.js
node --version

# Check dependencies
Test-Path dashboard\node_modules
Test-Path cloud-platform\node_modules

# Start servers
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PWD\cloud-platform'; `$env:Path += ';C:\Program Files\nodejs'; npm start"
Start-Sleep 5
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PWD\dashboard'; `$env:Path += ';C:\Program Files\nodejs'; npm start"
Start-Sleep 10
Start-Process "http://localhost:3001"
```

---

## 🎯 Most Likely Issue

**Servers aren't running!** 

Solution: Double-click `RUN-BOTH.bat` and wait for browser to open.

