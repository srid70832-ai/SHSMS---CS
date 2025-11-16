# 🚀 START HERE - Get Dashboard Working

## Quick Fix for URL Not Working

### Option 1: Use PowerShell Scripts (Easiest)

**Step 1 - Start Backend:**
```powershell
cd C:\Users\sri\shsms
.\start-backend.ps1
```
Wait for: `Cloud Platform server running on port 3000`

**Step 2 - Start Dashboard (NEW Terminal):**
```powershell
cd C:\Users\sri\shsms
.\start-dashboard.ps1
```
Wait for: `Compiled successfully!`

**Step 3 - Open Browser:**
Go to: **http://localhost:3001**

---

### Option 2: Manual Steps

**Terminal 1:**
```powershell
cd C:\Users\sri\shsms\cloud-platform
npm install
npm start
```

**Terminal 2 (NEW window):**
```powershell
cd C:\Users\sri\shsms\dashboard
npm install
npm start
```

Then open: **http://localhost:3001**

---

## ⚠️ Common Problems

### Problem: "npm: command not found"
**Solution:** Install Node.js from https://nodejs.org/

### Problem: "Port 3000/3001 already in use"
**Solution:**
```powershell
# Find and kill process
netstat -ano | findstr :3001
taskkill /PID <PID_NUMBER> /F
```

### Problem: "Cannot GET /"
**Solution:** Make sure backend is running first (Terminal 1)

### Problem: "Connection refused"
**Solution:** 
1. Check backend is running
2. Try: http://127.0.0.1:3001 instead

---

## ✅ Success Checklist

- [ ] Backend shows: "Cloud Platform server running on port 3000"
- [ ] Dashboard shows: "Compiled successfully!"
- [ ] Browser opens to http://localhost:3001
- [ ] You see "SHSMS Control Center" in browser

---

## 🆘 Still Not Working?

1. Check both terminals for error messages
2. Make sure Node.js is installed: `node --version`
3. Try clearing browser cache (Ctrl+Shift+Delete)
4. Try incognito/private browser mode
5. Check Windows Firewall isn't blocking ports

---

**Need more help?** See `FIX-URL-ISSUES.md` for detailed troubleshooting.

