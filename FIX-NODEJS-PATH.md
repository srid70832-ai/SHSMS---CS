# Fix: Node.js Not Recognized After Installation

## 🔧 Quick Fix Steps

### Step 1: Close and Reopen PowerShell

**IMPORTANT:** After installing Node.js, you MUST:
1. **Close ALL PowerShell/Command Prompt windows**
2. **Open a NEW PowerShell window**
3. Try again: `node --version`

### Step 2: Restart Your Computer (Recommended)

After installing Node.js:
1. **Restart your computer** (this ensures PATH is updated)
2. Open PowerShell
3. Run: `node --version`

### Step 3: Verify Installation Location

Check if Node.js is installed:
```powershell
Test-Path "C:\Program Files\nodejs\node.exe"
```

If this returns `True`, Node.js is installed but PATH isn't updated.

### Step 4: Add to PATH Manually (If Needed)

If Node.js is installed but not in PATH:

1. **Find Node.js location:**
   - Usually: `C:\Program Files\nodejs\`
   - Or: `C:\Program Files (x86)\nodejs\`

2. **Add to PATH:**
   - Press `Windows + R`
   - Type: `sysdm.cpl` and press Enter
   - Click "Environment Variables"
   - Under "System Variables", find "Path"
   - Click "Edit"
   - Click "New"
   - Add: `C:\Program Files\nodejs`
   - Click OK on all windows
   - **Restart computer**

### Step 5: Verify After Restart

After restarting, open PowerShell and run:
```powershell
node --version
npm --version
```

You should see version numbers!

## ✅ Quick Test

Run this in PowerShell:
```powershell
cd C:\Users\sri\shsms
.\check-nodejs.ps1
```

This will tell you if Node.js is working.

## 🚀 Once Node.js Works

Then run:
```powershell
.\setup-complete.ps1
```

This will install everything automatically!

---

**Most Common Issue:** Just need to restart terminal/computer after installation! 😊

